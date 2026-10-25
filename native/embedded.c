#include "starrouter.h"
#include <zmq.h>
#include <pthread.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <limits.h>
#include "authenticated_io.h"

#define SR_SLOTS 64
#define SR_MAX (16u * 1024u * 1024u)
struct slot {
  uint64_t id;
  pthread_t owner;
  void *socket;
  unsigned char *body;
  unsigned char route[255];
  size_t body_len, route_len, limit;
  int pending, secure, key_valid;
  unsigned char peer_key[32];
};
static struct slot slots[SR_SLOTS];
static pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
static uint64_t next_id = 1;
uint32_t sr_abi_version(void) { return 1; }
static int local_endpoint(const char *s) {
  const char *p;
  unsigned port=0, digits=0;
  if (!s || strlen(s)>1024) return 0;
  if (!strncmp(s,"tcp://127.0.0.1:",16)) p=s+16;
  else if (!strncmp(s,"tcp://[::1]:",12)) p=s+12;
  else return 0; /* No wildcard, DNS, public bind or unowned IPC path. */
  while (*p) { if (*p<'0'||*p>'9'||++digits>5) return 0;
    port=port*10+(unsigned)(*p++-'0'); }
  return digits && port>0 && port<=65535;
}
static int lookup(uint64_t id, struct slot **out) {
  unsigned i;
  if (!id) return SR_CLOSED;
  for(i=0;i<SR_SLOTS;i++) if(slots[i].id==id) {
    if(!pthread_equal(slots[i].owner,pthread_self())) return SR_OWNER;
    *out=&slots[i]; return SR_OK;
  }
  return SR_CLOSED;
}
static int poison(struct slot *s, int code) {
  if(s->socket) zmq_close(s->socket);
  s->socket=NULL; s->pending=0; s->key_valid=0;
  return code;
}
static int open_impl(void *context,const char *endpoint,const char *profile,
            uint32_t limit,uint32_t hwm,uint32_t timeout,
            const unsigned char *secret,uint64_t *out) {
  unsigned i; int status=SR_NATIVE;
  void *socket=NULL; unsigned char *body=NULL;
  int zero=0, one=1, h=(int)hwm, t=(int)timeout;
  int64_t max=(int64_t)limit;
  if(!context||!out||*out||!local_endpoint(endpoint)||!limit||limit>SR_MAX||
     !hwm||hwm>65536||!timeout||timeout>1000) return SR_INVALID;
  if(!profile||strcmp(profile,"star.actor2actor/1")) return SR_PROFILE;
  body=malloc(limit); if(!body) goto done;
  socket=zmq_socket(context,ZMQ_ROUTER); if(!socket) goto done;
#define OPT(k,v) if(zmq_setsockopt(socket,k,&v,sizeof(v))) goto done
  OPT(ZMQ_LINGER,zero); OPT(ZMQ_ROUTER_MANDATORY,one);
  OPT(ZMQ_RCVHWM,h); OPT(ZMQ_SNDHWM,h); OPT(ZMQ_RCVTIMEO,t);
  OPT(ZMQ_SNDTIMEO,t); OPT(ZMQ_MAXMSGSIZE,max);
#undef OPT
  if(sr_secure_socket(socket,secret)||zmq_bind(socket,endpoint)) goto done;
  pthread_mutex_lock(&mutex);
  for(i=0;i<SR_SLOTS && slots[i].id;i++);
  if(i==SR_SLOTS || next_id==UINT64_MAX) {
    pthread_mutex_unlock(&mutex); goto done;
  }
  slots[i]=(struct slot){.id=next_id++, .owner=pthread_self(),
    .socket=socket,.body=body,.limit=limit,.secure=secret!=NULL};
  *out=slots[i].id; socket=NULL; body=NULL; status=SR_OK;
  pthread_mutex_unlock(&mutex);
done:
  if(socket) zmq_close(socket);
  free(body); return status;
}
int sr_open(void *context,const char *endpoint,const char *profile,
            uint32_t limit,uint32_t hwm,uint32_t timeout,uint64_t *out) {
  return open_impl(context,endpoint,profile,limit,hwm,timeout,NULL,out);
}
int sr_open_secure(void *context,const char *endpoint,const char *profile,
            uint32_t limit,uint32_t hwm,uint32_t timeout,const void *secret,uint64_t *out) {
  if(!secret)return SR_INVALID;
  return open_impl(context,endpoint,profile,limit,hwm,timeout,secret,out);
}
int sr_peer_key(uint64_t id,void *key) {
  struct slot *s=NULL;int status;
  if(!key)return SR_INVALID;
  pthread_mutex_lock(&mutex);status=lookup(id,&s);pthread_mutex_unlock(&mutex);
  if(status)return status;
  if(!s->socket||!s->secure||!s->key_valid)return SR_INVALID;
  memcpy(key,s->peer_key,32);return SR_OK;
}
static int more(void *socket) {
  int v=0; size_t n=sizeof(v);
  return zmq_getsockopt(socket,ZMQ_RCVMORE,&v,&n)?-1:v;
}
int sr_receive(uint64_t id,void *route,size_t rcap,size_t *rlen,
               void *body,size_t bcap,size_t *blen) {
  struct slot *s=NULL; int status,n;
  if(!rlen||!blen||(!route&&rcap)||(!body&&bcap)) return SR_INVALID;
  *rlen=0; *blen=0;
  pthread_mutex_lock(&mutex); status=lookup(id,&s);
  pthread_mutex_unlock(&mutex);
  if(status) return status;
  /* Only this owner thread may mutate or close the resolved slot. No lock is
     held during I/O, so another owner can poll or shut down independently. */
  if(!s->socket) return SR_CLOSED;
  if(!s->pending) {
    s->key_valid=0;
    n=zmq_recv(s->socket,s->route,sizeof(s->route),0);
    if(n<0) { status=errno==EAGAIN?SR_AGAIN:poison(s,SR_NATIVE); goto done; }
    if(n<1||n>255||more(s->socket)!=1) {status=poison(s,SR_MALFORMED);goto done;}
    s->route_len=(size_t)n;
    n=sr_message_receive(s->socket,s->body,s->limit,s->peer_key,&s->key_valid);
    if(n<0||(size_t)n>s->limit||more(s->socket)!=0||
       (s->secure&&!s->key_valid)) {
      status=poison(s,SR_MALFORMED);goto done;
    }
    s->body_len=(size_t)n; s->pending=1;
  }
  *rlen=s->route_len; *blen=s->body_len;
  if(rcap<s->route_len||bcap<s->body_len) {status=SR_BUFFER_SMALL;goto done;}
  memcpy(route,s->route,s->route_len);
  if(s->body_len) memcpy(body,s->body,s->body_len);
  s->pending=0; status=SR_OK;
done:
  return status;
}
int sr_send(uint64_t id,const void *route,size_t rlen,const void *body,size_t blen) {
  struct slot *s=NULL; int status,n;
  if(!route||rlen<1||rlen>255||(!body&&blen)) return SR_INVALID;
  pthread_mutex_lock(&mutex); status=lookup(id,&s);
  pthread_mutex_unlock(&mutex);
  if(status) return status;
  /* Only this owner thread may mutate or close the resolved slot. No lock is
     held during I/O, so another owner can poll or shut down independently. */
  if(!s->socket) return SR_CLOSED;
  if(blen>s->limit) {status=SR_INVALID;goto done;}
  n=zmq_send(s->socket,route,rlen,ZMQ_SNDMORE);
  if(n<0) {status=errno==EAGAIN?SR_AGAIN:
      (errno==EHOSTUNREACH?SR_NO_ROUTE:poison(s,SR_NATIVE));goto done;}
  n=zmq_send(s->socket,body,blen,0);
  if(n<0||(size_t)n!=blen) {status=poison(s,SR_OUTCOME_UNKNOWN);goto done;}
  status=SR_OK;
done:
  return status;
}
int sr_close(uint64_t *id) {
  unsigned i; int status=SR_CLOSED;
  if(!id) return SR_INVALID;
  if(!*id) return SR_OK;
  pthread_mutex_lock(&mutex);
  for(i=0;i<SR_SLOTS;i++) if(slots[i].id==*id) {
    if(!pthread_equal(slots[i].owner,pthread_self())) {status=SR_OWNER;break;}
    if(slots[i].socket) zmq_close(slots[i].socket);
    free(slots[i].body); memset(&slots[i],0,sizeof(slots[i]));
    *id=0; status=SR_OK; break;
  }
  pthread_mutex_unlock(&mutex); return status;
}
