#ifndef STARROUTER_AUTHENTICATED_IO_H
#define STARROUTER_AUTHENTICATED_IO_H
#include <zmq.h>
#include <string.h>
#include <stdint.h>
#include <errno.h>
/* The ZAP worker supplies this authenticated User-Id, never the client body. */
static int sr_decode_key(const char *text,unsigned char key[32]) {
  size_t i;
  if(!text||strlen(text)!=64)return 0;
  for(i=0;i<32;i++) {
    unsigned char a=(unsigned char)text[2*i],b=(unsigned char)text[2*i+1];
    if(!((a>='0'&&a<='9')||(a>='a'&&a<='f'))||
       !((b>='0'&&b<='9')||(b>='a'&&b<='f')))return 0;
    key[i]=(unsigned char)(((a<='9'?a-'0':a-'a'+10)<<4)|
                          (b<='9'?b-'0':b-'a'+10));
  }
  return 1;
}
static int sr_secure_socket(void *socket,const unsigned char *secret) {
  int server=1;const char domain[]="starrouter.loopback";
  if(!secret)return 0;
  if(zmq_setsockopt(socket,ZMQ_CURVE_SECRETKEY,secret,32)||
     zmq_setsockopt(socket,ZMQ_CURVE_SERVER,&server,sizeof(server))||
     zmq_setsockopt(socket,ZMQ_ZAP_DOMAIN,domain,sizeof(domain)-1))return -1;
  return 0;
}
/* Uses zmq_msg_t from the real development header, never guessed storage size. */
static int sr_message_receive(void *socket,void *buffer,size_t capacity,
                              unsigned char key[32],int *key_valid) {
  zmq_msg_t msg;int result,saved;
  *key_valid=0;
  if(zmq_msg_init(&msg))return -1;
  result=zmq_msg_recv(&msg,socket,0);saved=errno;
  if(result>=0) {
    size_t size=zmq_msg_size(&msg);
    const char *user=zmq_msg_gets(&msg,"User-Id");
    *key_valid=sr_decode_key(user,key);
    if(size<=capacity&&size)memcpy(buffer,zmq_msg_data(&msg),size);
  }
  zmq_msg_close(&msg);errno=saved;return result;
}
#endif
