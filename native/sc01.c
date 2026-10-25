#include "starrouter.h"
#include <zmq.h>
#include <pthread.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <stdint.h>
#include <time.h>
extern void *sr_core_begin(void);
extern void sr_core_end(void *);
extern int sr_core_process(void *,int,void *,size_t,void *,size_t,size_t *);
#define COUNT 16
struct broker {
  uint64_t id; pthread_t owner, worker; pthread_mutex_t lock;
  pthread_cond_t request, completed;
  void *context, *api, *pub, *core;
  char api_endpoint[128], pub_endpoint[128];
  unsigned char *input, *output, *received;
  size_t capacity, input_len, output_len, received_len;
  uint32_t limit; int hwm, timeout, command, status, ready, pending;
};
static struct broker *brokers[COUNT];
static pthread_mutex_t registry=PTHREAD_MUTEX_INITIALIZER;
static uint64_t next_token=1;
static int endpoint_ok(const char *s) {
  const char *p; unsigned n=0,d=0;
  if(!s || strlen(s)>=128) return 0;
  if(!strncmp(s,"tcp://127.0.0.1:",16))p=s+16;
  else if(!strncmp(s,"tcp://[::1]:",12))p=s+12;
  else return 0;
  while(*p) {if(*p<'0'||*p>'9'||++d>5)return 0;n=n*10+(*p++-'0');}
  return d&&n&&n<=65535;
}
static int lookup(uint64_t id,struct broker **out) {
  int status=SR_CLOSED; unsigned i;
  pthread_mutex_lock(&registry);
  for(i=0;i<COUNT;i++) if(brokers[i]&&brokers[i]->id==id) {
    if(!pthread_equal(brokers[i]->owner,pthread_self()))status=SR_OWNER;
    else {*out=brokers[i];status=SR_OK;} break;
  }
  pthread_mutex_unlock(&registry);return status;
}
static void put32(unsigned char *p,size_t n) {
  p[0]=(unsigned char)(n>>24);p[1]=(unsigned char)(n>>16);
  p[2]=(unsigned char)(n>>8);p[3]=(unsigned char)n;
}
static size_t get32(const unsigned char *p) {
  return ((size_t)p[0]<<24)|((size_t)p[1]<<16)|((size_t)p[2]<<8)|p[3];
}
static void *open_socket(struct broker *b,int kind,const char *endpoint) {
  void *s=zmq_socket(b->context,kind); int zero=0,one=1;
  int64_t limit=b->limit;
  if(!s)return NULL;
#define OPT(k,v) if(zmq_setsockopt(s,k,&v,sizeof(v)))goto fail
  OPT(ZMQ_LINGER,zero);OPT(ZMQ_SNDHWM,b->hwm);OPT(ZMQ_RCVHWM,b->hwm);
  OPT(ZMQ_RCVTIMEO,b->timeout);OPT(ZMQ_SNDTIMEO,b->timeout);
  OPT(ZMQ_MAXMSGSIZE,limit);
  if(kind==ZMQ_ROUTER){OPT(ZMQ_ROUTER_MANDATORY,one);}
#undef OPT
  if(zmq_bind(s,endpoint))goto fail;
  return s;
fail: zmq_close(s);return NULL;
}
static int ack(struct broker *b,int accept) {
  size_t n=get32(b->received);
  if(zmq_send(b->api,b->received+4,n,ZMQ_SNDMORE)<0)return SR_OUTCOME_UNKNOWN;
  if(zmq_send(b->api,accept?"1":"2",1,0)!=1)return SR_OUTCOME_UNKNOWN;
  return SR_OK;
}
static int publish(struct broker *b) {
  size_t pos=0;unsigned count=0;
  while(pos<b->output_len) {
    size_t n;
    if(b->output_len-pos<4)return SR_MALFORMED;
    n=get32(b->output+pos);pos+=4;
    if(n>b->output_len-pos||++count>6)return SR_MALFORMED;
    if(zmq_send(b->pub,b->output+pos,n,pos+n<b->output_len?ZMQ_SNDMORE:0)<0)
      return SR_OUTCOME_UNKNOWN;
    pos+=n;
  }
  return count==0||count==6?SR_OK:SR_MALFORMED;
}
static int receive_message(struct broker *b) {
  size_t pos=0;unsigned count=0;int more=1,status;
  if(b->pending)return SR_OK;
  while(more) {
    int n;size_t opt=sizeof(more),cap;
    if(count>=9||pos+4>=b->capacity)return SR_CLOSED;
    cap=count==8?b->limit:255;
    n=zmq_recv(b->api,b->received+pos+4,cap,0);
    if(n<0)return count==0&&errno==EAGAIN?SR_AGAIN:SR_CLOSED;
    if((size_t)n>cap)return SR_CLOSED;
    put32(b->received+pos,(size_t)n);pos+=4+(size_t)n;count++;
    if(zmq_getsockopt(b->api,ZMQ_RCVMORE,&more,&opt))return SR_CLOSED;
  }
  b->received_len=pos;
  status=sr_core_process(b->core,1,b->received,pos,b->output,b->capacity,&b->output_len);
  if(status) {
    if(count>0&&get32(b->received)>0) {
      int sent=ack(b,0);if(sent)return sent;
    }
    return status;
  }
  b->pending=1;return SR_OK;
}
static void *worker_main(void *arg) {
  struct broker *b=arg;int done=0;time_t maintained=time(NULL);
  b->core=sr_core_begin();
  if(b->core) {
    b->api=open_socket(b,ZMQ_ROUTER,b->api_endpoint);
    b->pub=open_socket(b,ZMQ_PUB,b->pub_endpoint);
  }
  pthread_mutex_lock(&b->lock);
  b->status=b->core&&b->api&&b->pub?SR_OK:SR_NATIVE;
  b->ready=1;pthread_cond_signal(&b->completed);
  while(!done) {
    int command;
    while(!b->command)pthread_cond_wait(&b->request,&b->lock);
    command=b->command;pthread_mutex_unlock(&b->lock);
    b->output_len=0;
    if(command==9) {b->status=SR_OK;done=1;}
    else if(!b->api||!b->pub)b->status=SR_CLOSED;
    else if(command==1)b->status=receive_message(b);
    else if(command==2||command==3) {
      if(!b->pending)b->status=SR_INVALID;
      else {
        b->status=sr_core_process(b->core,command,NULL,0,b->output,b->capacity,&b->output_len);
        if(!b->status&&command==2)b->status=publish(b);
        if(!b->status)b->status=ack(b,command==2);
        else {
          size_t ignored;sr_core_process(b->core,3,NULL,0,b->output,b->capacity,&ignored);
          if(ack(b,0))b->status=SR_OUTCOME_UNKNOWN;
        }
        b->pending=0;
      }
    } else if(command==4) {
      b->status=sr_core_process(b->core,4,b->input,b->input_len,b->output,b->capacity,&b->output_len);
      if(!b->status)b->status=publish(b);
    } else b->status=SR_INVALID;
    if(!done && b->api && b->pub && time(NULL)-maintained>=10) {
      size_t used=0;
      int maintenance=sr_core_process(b->core,5,NULL,0,b->output,b->capacity,&used);
      b->output_len=used;
      if(!maintenance)maintenance=publish(b);
      if(maintenance)b->status=SR_OUTCOME_UNKNOWN;
      maintained=time(NULL);
    }
    if(b->status==SR_CLOSED||b->status==SR_OUTCOME_UNKNOWN) {
      if(b->api)zmq_close(b->api);
    if(b->pub)zmq_close(b->pub);
      b->api=NULL;b->pub=NULL;
    }
    pthread_mutex_lock(&b->lock);b->command=0;pthread_cond_signal(&b->completed);
  }
  pthread_mutex_unlock(&b->lock);
  if(b->api)zmq_close(b->api);
    if(b->pub)zmq_close(b->pub);
  sr_core_end(b->core);return NULL;
}
static int call(struct broker *b,int command) {
  int status;
  pthread_mutex_lock(&b->lock);b->command=command;pthread_cond_signal(&b->request);
  while(b->command)pthread_cond_wait(&b->completed,&b->lock);
  status=b->status;pthread_mutex_unlock(&b->lock);return status;
}
static void release(struct broker *b) {
  pthread_cond_destroy(&b->request);pthread_cond_destroy(&b->completed);
  pthread_mutex_destroy(&b->lock);free(b->input);free(b->output);free(b->received);free(b);
}
int sr_sc01_open(void *context,const char *api,const char *pub,uint32_t limit,
                 uint32_t hwm,uint32_t timeout,uint64_t *out) {
  struct broker *b;unsigned index;int status;
  if(!context||!out||*out||!endpoint_ok(api)||!endpoint_ok(pub)||!strcmp(api,pub)||
     limit<255||limit>16u*1024u*1024u||!hwm||hwm>65536||!timeout||timeout>1000)return SR_INVALID;
  b=calloc(1,sizeof(*b));if(!b)return SR_NATIVE;
  b->capacity=(size_t)limit+4096;b->input=malloc(b->capacity);
  b->output=malloc(b->capacity);b->received=malloc(b->capacity);
  if(!b->input||!b->output||!b->received) {free(b->input);free(b->output);free(b->received);free(b);return SR_NATIVE;}
  b->context=context;b->owner=pthread_self();b->limit=limit;b->hwm=(int)hwm;b->timeout=(int)timeout;
  strcpy(b->api_endpoint,api);strcpy(b->pub_endpoint,pub);
  pthread_mutex_init(&b->lock,NULL);pthread_cond_init(&b->request,NULL);pthread_cond_init(&b->completed,NULL);
  if(pthread_create(&b->worker,NULL,worker_main,b)){release(b);return SR_NATIVE;}
  pthread_mutex_lock(&b->lock);while(!b->ready)pthread_cond_wait(&b->completed,&b->lock);
  status=b->status;pthread_mutex_unlock(&b->lock);
  if(!status) {
    pthread_mutex_lock(&registry);
    for(index=0;index<COUNT&&brokers[index];index++);
    if(index==COUNT||next_token==UINT64_MAX)status=SR_NATIVE;
    else {b->id=next_token++;brokers[index]=b;*out=b->id;}
    pthread_mutex_unlock(&registry);
  }
  if(status){call(b,9);pthread_join(b->worker,NULL);release(b);}
  return status;
}
int sr_sc01_receive(uint64_t id,void *buffer,size_t cap,size_t *len) {
  struct broker *b=NULL;int status;
  if(!len||(!buffer&&cap))return SR_INVALID;
  *len=0;
  status=lookup(id,&b);if(status)return status;
  status=call(b,1);if(status)return status;
  *len=b->received_len;if(cap<*len)return SR_BUFFER_SMALL;
  memcpy(buffer,b->received,*len);return SR_OK;
}
int sr_sc01_settle(uint64_t id,int accept) {
  struct broker *b=NULL;int status=lookup(id,&b);if(status)return status;
  if(accept!=0&&accept!=1)return SR_INVALID;
  return call(b,accept?2:3);
}
int sr_sc01_target(uint64_t id,const char *actor,const char *message_id,const void *body,size_t len) {
  struct broker *b=NULL;size_t a,m,pos=0;int status=lookup(id,&b);if(status)return status;
  if(!actor||!message_id||(!body&&len)||len>b->limit)return SR_INVALID;
  a=strlen(actor);m=strlen(message_id);if(!a||a>255||!m||m>255)return SR_INVALID;
  put32(b->input,a);pos+=4;memcpy(b->input+pos,actor,a);pos+=a;
  put32(b->input+pos,m);pos+=4;memcpy(b->input+pos,message_id,m);pos+=m;
  put32(b->input+pos,len);pos+=4;if(len)memcpy(b->input+pos,body,len);pos+=len;
  b->input_len=pos;return call(b,4);
}
int sr_sc01_close(uint64_t *id) {
  struct broker *b=NULL;unsigned i;int status;
  if(!id)return SR_INVALID;
  if(!*id)return SR_OK;
  status=lookup(*id,&b);if(status)return status;
  call(b,9);pthread_join(b->worker,NULL);
  pthread_mutex_lock(&registry);for(i=0;i<COUNT;i++)if(brokers[i]==b)brokers[i]=NULL;
  pthread_mutex_unlock(&registry);release(b);*id=0;return SR_OK;
}
