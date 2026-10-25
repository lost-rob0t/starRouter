#include "security.h"
#include "starrouter.h"
#include <zmq.h>
#include <pthread.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>

#define AUTH_SLOTS 64
#define FRAME_CAP 1024
struct auth {
  uint64_t id;
  pthread_t owner, worker;
  pthread_mutex_t lock;
  pthread_cond_t ready;
  int initialized, result, stop;
  void *context;
  unsigned char *keys;
  size_t count;
};
static struct auth *auths[AUTH_SLOTS];
static pthread_mutex_t registry = PTHREAD_MUTEX_INITIALIZER;
static uint64_t next_auth = 1;

static int stopping(struct auth *a) {
  int stop;
  pthread_mutex_lock(&a->lock); stop=a->stop; pthread_mutex_unlock(&a->lock);
  return stop;
}
static int equal_frame(const unsigned char *frame, size_t n, const char *s) {
  return n==strlen(s) && !memcmp(frame,s,n);
}
static int receive_request(void *socket, unsigned char frames[7][FRAME_CAP],
                           size_t lengths[7]) {
  int i, n, more=0; size_t size;
  for(i=0;i<7;i++) {
    n=zmq_recv(socket,frames[i],FRAME_CAP,0);
    if(n<0) return i==0 && errno==EAGAIN ? 0 : -1;
    if(n>FRAME_CAP) return -1;
    lengths[i]=(size_t)n; size=sizeof(more);
    if(zmq_getsockopt(socket,ZMQ_RCVMORE,&more,&size)) return -1;
    if(!more) return i+1;
  }
  /* Never drain an unbounded multipart request. Closing ZAP fails closed. */
  return -1;
}
static int reply(void *socket,const unsigned char *sequence,size_t sequence_len,
                  const char *user) {
  const void *parts[6]={"1.0",sequence,*user?"200":"400",
                        *user?"OK":"DENIED",user,""};
  size_t lengths[6]={3,sequence_len,3,*user?2:6,strlen(user),0};
  int i;
  for(i=0;i<6;i++)
    if(zmq_send(socket,parts[i],lengths[i],i<5?ZMQ_SNDMORE:0)<0) return -1;
  return 0;
}
static void *run_auth(void *arg) {
  struct auth *a=arg;
  void *socket=zmq_socket(a->context,ZMQ_REP);
  int result=SR_NATIVE, zero=0, timeout=100, hwm=32;
  int64_t max=FRAME_CAP;
  if(socket && !zmq_setsockopt(socket,ZMQ_LINGER,&zero,sizeof(zero)) &&
     !zmq_setsockopt(socket,ZMQ_RCVTIMEO,&timeout,sizeof(timeout)) &&
     !zmq_setsockopt(socket,ZMQ_SNDTIMEO,&timeout,sizeof(timeout)) &&
     !zmq_setsockopt(socket,ZMQ_RCVHWM,&hwm,sizeof(hwm)) &&
     !zmq_setsockopt(socket,ZMQ_SNDHWM,&hwm,sizeof(hwm)) &&
     !zmq_setsockopt(socket,ZMQ_MAXMSGSIZE,&max,sizeof(max)) &&
     !zmq_bind(socket,"inproc://zeromq.zap.01")) result=SR_OK;
  pthread_mutex_lock(&a->lock);
  a->result=result; a->initialized=1; pthread_cond_signal(&a->ready);
  pthread_mutex_unlock(&a->lock);
  while(result==SR_OK && !stopping(a)) {
    unsigned char frames[7][FRAME_CAP]; size_t lengths[7]={0};
    char user[65]={0}; size_t key,j;
    int n=receive_request(socket,frames,lengths);
    if(n==0) continue;
    if(n<0) {
      /* Keep the ZAP endpoint bound on a malformed/failed request. Removing it
       * could permit a transport configured without enforced ZAP to fall back
       * to unauthenticated CURVE. Pending handshakes must time out instead. */
      pthread_mutex_lock(&a->lock);
      while(!a->stop) pthread_cond_wait(&a->ready,&a->lock);
      pthread_mutex_unlock(&a->lock);
      break;
    }
    if(n==7 && equal_frame(frames[0],lengths[0],"1.0") &&
       lengths[1]>0 && lengths[1]<=255 &&
       equal_frame(frames[2],lengths[2],SR_AUTH_DOMAIN) &&
       (equal_frame(frames[3],lengths[3],"127.0.0.1") ||
        equal_frame(frames[3],lengths[3],"::1")) &&
       equal_frame(frames[5],lengths[5],"CURVE") && lengths[6]==32) {
      for(key=0;key<a->count;key++) if(!memcmp(a->keys+key*32,frames[6],32)) {
        const char hex[]="0123456789abcdef";
        for(j=0;j<32;j++) { user[2*j]=hex[frames[6][j]>>4];
                           user[2*j+1]=hex[frames[6][j]&15]; }
        break;
      }
    }
    if(reply(socket,frames[1],n>=2?lengths[1]:0,user)) {
      pthread_mutex_lock(&a->lock);
      while(!a->stop) pthread_cond_wait(&a->ready,&a->lock);
      pthread_mutex_unlock(&a->lock);
      break;
    }
  }
  if(socket) zmq_close(socket);
  return NULL;
}
int sr_auth_start(void *context,const unsigned char *keys,size_t count,
                  uint64_t *out) {
  struct auth *a; unsigned slot; int result;
  if(!context||!keys||!count||count>1024||!out||*out) return SR_INVALID;
  a=calloc(1,sizeof(*a)); if(!a) return SR_NATIVE;
  a->keys=malloc(count*32);
  if(!a->keys) { free(a); return SR_NATIVE; }
  memcpy(a->keys,keys,count*32); a->count=count; a->context=context;
  a->owner=pthread_self();
  if(pthread_mutex_init(&a->lock,NULL)) { free(a->keys);free(a);return SR_NATIVE; }
  if(pthread_cond_init(&a->ready,NULL)) {
    pthread_mutex_destroy(&a->lock);free(a->keys);free(a);return SR_NATIVE;
  }
  pthread_mutex_lock(&registry);
  for(slot=0;slot<AUTH_SLOTS && auths[slot];slot++);
  if(slot==AUTH_SLOTS || next_auth==UINT64_MAX) {
    pthread_mutex_unlock(&registry); result=SR_NATIVE; goto failed;
  }
  a->id=next_auth++; auths[slot]=a;
  pthread_mutex_unlock(&registry);
  if(pthread_create(&a->worker,NULL,run_auth,a)) {
    result=SR_NATIVE; goto remove;
  }
  pthread_mutex_lock(&a->lock);
  while(!a->initialized) pthread_cond_wait(&a->ready,&a->lock);
  result=a->result; pthread_mutex_unlock(&a->lock);
  if(result==SR_OK) { *out=a->id; return SR_OK; }
  pthread_join(a->worker,NULL);
remove:
  pthread_mutex_lock(&registry); auths[slot]=NULL; pthread_mutex_unlock(&registry);
failed:
  pthread_cond_destroy(&a->ready); pthread_mutex_destroy(&a->lock);
  free(a->keys); free(a); return result;
}
int sr_auth_close(uint64_t *handle) {
  struct auth *a; unsigned slot;
  if(!handle) return SR_INVALID;
  if(!*handle) return SR_OK;
  pthread_mutex_lock(&registry);
  for(slot=0;slot<AUTH_SLOTS;slot++)
    if(auths[slot] && auths[slot]->id==*handle) break;
  if(slot==AUTH_SLOTS) { pthread_mutex_unlock(&registry); return SR_CLOSED; }
  a=auths[slot];
  if(!pthread_equal(a->owner,pthread_self())) {
    pthread_mutex_unlock(&registry); return SR_OWNER;
  }
  auths[slot]=NULL; pthread_mutex_unlock(&registry);
  pthread_mutex_lock(&a->lock); a->stop=1; pthread_cond_signal(&a->ready);
  pthread_mutex_unlock(&a->lock);
  /* Receives and sends have 100ms deadlines; no external thread callbacks. */
  pthread_join(a->worker,NULL);
  pthread_cond_destroy(&a->ready); pthread_mutex_destroy(&a->lock);
  free(a->keys); free(a); *handle=0; return SR_OK;
}
