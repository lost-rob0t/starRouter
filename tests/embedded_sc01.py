"""Real Nim SC01 core inside shared library, host settlement, loopback peers."""
import ctypes as C
import json
from pathlib import Path
import struct
import time
import unittest
from embedded_native import LIB, ZMQ, endpoint

LIB.sr_sc01_open.argtypes = [C.c_void_p,C.c_char_p,C.c_char_p,C.c_uint32,
                            C.c_uint32,C.c_uint32,C.POINTER(C.c_uint64)]
LIB.sr_sc01_open_secure.argtypes = [C.c_void_p,C.c_char_p,C.c_char_p,C.c_uint32,
                                   C.c_uint32,C.c_uint32,C.c_void_p,C.POINTER(C.c_uint64)]
LIB.sr_sc01_peer_key.argtypes = [C.c_uint64,C.c_void_p]
LIB.sr_auth_start.argtypes = [C.c_void_p,C.c_void_p,C.c_size_t,C.POINTER(C.c_uint64)]
LIB.sr_auth_close.argtypes = [C.POINTER(C.c_uint64)]
ZMQ.zmq_curve_keypair.argtypes = [C.c_void_p,C.c_void_p]
ZMQ.zmq_z85_decode.argtypes = [C.c_void_p,C.c_char_p]
ZMQ.zmq_z85_decode.restype = C.c_void_p
LIB.sr_sc01_receive.argtypes = [C.c_uint64,C.c_void_p,C.c_size_t,C.POINTER(C.c_size_t)]
LIB.sr_sc01_settle.argtypes = [C.c_uint64,C.c_int]
LIB.sr_sc01_target.argtypes = [C.c_uint64,C.c_char_p,C.c_char_p,C.c_void_p,C.c_size_t]
LIB.sr_sc01_close.argtypes = [C.POINTER(C.c_uint64)]
ZMQ.zmq_getsockopt.argtypes = [C.c_void_p,C.c_int,C.c_void_p,C.POINTER(C.c_size_t)]
ROOT=Path(__file__).resolve().parents[1]
SCHEMA=json.loads((ROOT/'schemas/starintel-0.10.1/generated/schema.json').read_text())
FIXTURES=json.loads((ROOT/'schemas/starintel-0.10.1/research-fixtures.json').read_text())
DOC=next(f['document'] for f in FIXTURES if f['name']=='minimal-operation' and f['valid'])

def sample(n):
    if '$ref' in n:return sample(SCHEMA['$defs'][n['$ref'].split('/')[-1]])
    if 'enum' in n:return n['enum'][0]
    if 'anyOf' in n:return sample(n['anyOf'][0])
    k=n.get('type')
    if k=='object':return {x:sample(n['properties'][x]) for x in n.get('required',[])}
    if k=='array':return []
    if k in ('integer','number'):return n.get('minimum',0)
    if k=='boolean':return False
    if n.get('format')=='date-time':return '2026-10-25T12:00:00Z'
    return 'fixture'

def keypair():
    public,secret=C.create_string_buffer(41),C.create_string_buffer(41)
    if ZMQ.zmq_curve_keypair(public,secret):raise RuntimeError('CURVE unavailable')
    raw_public,raw_secret=C.create_string_buffer(32),C.create_string_buffer(32)
    if not ZMQ.zmq_z85_decode(raw_public,public):raise RuntimeError('Invalid public key')
    if not ZMQ.zmq_z85_decode(raw_secret,secret):raise RuntimeError('Invalid secret key')
    return public.value,secret.value,raw_public.raw,raw_secret.raw

class SC01(unittest.TestCase):
    SECURE=False
    def setUp(self):
        self.ctx=ZMQ.zmq_ctx_new();self.handle=C.c_uint64();self.sockets=[]
        self.api,self.pub=endpoint(),endpoint()
        if self.SECURE:
            self.server_keys,self.client_keys=keypair(),keypair()
            self.auth=C.c_uint64()
            self.assertEqual(LIB.sr_auth_start(self.ctx,self.client_keys[2],1,C.byref(self.auth)),0)
            self.assertEqual(LIB.sr_sc01_open_secure(self.ctx,self.api,self.pub,1048576,8,100,
                                                     self.server_keys[3],C.byref(self.handle)),0)
        else:
            self.assertEqual(LIB.sr_sc01_open(self.ctx,self.api,self.pub,1048576,8,100,C.byref(self.handle)),0)
        self.peer=self.socket(5,self.api,b'fixture')
        self.sub=self.socket(2,self.pub)
        self.assertEqual(ZMQ.zmq_setsockopt(self.sub,6,b'',0),0)
        time.sleep(.15)
    def socket(self,kind,address,identity=None):
        s=ZMQ.zmq_socket(self.ctx,kind);self.assertTrue(s);self.sockets.append(s)
        for key,value in [(17,0),(27,500),(28,500)]:
            x=C.c_int(value);self.assertEqual(ZMQ.zmq_setsockopt(s,key,C.byref(x),C.sizeof(x)),0)
        if self.SECURE:
            for key,value in [(48,self.client_keys[0]),(49,self.client_keys[1]),(50,self.server_keys[0])]:
                self.assertEqual(ZMQ.zmq_setsockopt(s,key,value,len(value)),0)
        if identity:self.assertEqual(ZMQ.zmq_setsockopt(s,5,identity,len(identity)),0)
        self.assertEqual(ZMQ.zmq_connect(s,address),0);return s
    def tearDown(self):
        for s in self.sockets:ZMQ.zmq_close(s)
        self.assertEqual(LIB.sr_sc01_close(C.byref(self.handle)),0)
        self.assertEqual(LIB.sr_sc01_close(C.byref(self.handle)),0)
        if self.SECURE:self.assertEqual(LIB.sr_auth_close(C.byref(self.auth)),0)
        self.assertEqual(ZMQ.zmq_ctx_term(self.ctx),0)
    def send(self,event,body=b'',topic=b'collector',peer=None,source=b'fixture'):
        parts=[b'',b'SC01',source,b'fixture-id',b'1792929600',str(event).encode(),topic,body]
        for i,p in enumerate(parts):self.assertEqual(ZMQ.zmq_send(peer or self.peer,p,len(p),2 if i+1<len(parts) else 0),len(p))
    def frames(self,s):
        out=[]
        while True:
            b=C.create_string_buffer(1048576);n=ZMQ.zmq_recv(s,b,len(b),0)
            self.assertGreaterEqual(n,0);out.append(b.raw[:n])
            more=C.c_int();size=C.c_size_t(C.sizeof(more))
            self.assertEqual(ZMQ.zmq_getsockopt(s,13,C.byref(more),C.byref(size)),0)
            if not more.value:return out
    def receive(self):
        b=C.create_string_buffer(1052672);n=C.c_size_t()
        status=LIB.sr_sc01_receive(self.handle,b,len(b),C.byref(n))
        if status:return status,[]
        raw=b.raw[:n.value];parts=[]
        while raw:
            size=struct.unpack('!I',raw[:4])[0];parts.append(raw[4:4+size]);raw=raw[4+size:]
        return status,parts
    def register(self):
        self.send(7);self.assertEqual(self.receive()[0],0)
        self.assertEqual(LIB.sr_sc01_settle(self.handle,1),0)
        self.assertEqual(self.frames(self.peer),[b'1'])
    def test_register_requires_host_acceptance(self):
        self.send(7);self.assertEqual(self.receive()[0],0)
        b=C.create_string_buffer(8)
        self.assertEqual(ZMQ.zmq_recv(self.peer,b,8,1),-1)
        self.assertEqual(LIB.sr_sc01_settle(self.handle,0),0)
        self.assertEqual(self.frames(self.peer),[b'2'])
        self.send(0);self.assertEqual(self.receive()[0],-5)
        self.assertEqual(self.frames(self.peer),[b'2'])
    def test_document_ack_after_host_commit_and_target_projection(self):
        self.register()
        body=json.dumps(DOC,separators=(',',':')).encode()
        self.send(3,body,b'documents');status,parts=self.receive()
        self.assertEqual(status,0);self.assertEqual(parts[-1],body)
        b=C.create_string_buffer(8)
        self.assertEqual(ZMQ.zmq_recv(self.peer,b,8,1),-1)
        self.assertEqual(LIB.sr_sc01_settle(self.handle,1),0)
        self.assertEqual(self.frames(self.peer),[b'1'])
        self.assertEqual(self.frames(self.sub)[-1],body)
        target=sample(SCHEMA['$defs']['Target'])
        target.update(id='fixture:target',dataset='test',dtype='target',schemaVersion='0.10.1')
        wire=json.dumps(target).encode()
        self.assertEqual(LIB.sr_sc01_target(self.handle,b'collector',b'target-id',wire,len(wire)),0)
        delivered=self.frames(self.sub)
        self.assertEqual(delivered[0],b'fixture');self.assertEqual(delivered[-1],wire)
        self.assertEqual(delivered[4],b'3')
    def test_invalid_document_and_spoofed_source(self):
        self.register();self.send(3,b'{}',b'documents')
        self.assertEqual(self.receive()[0],-5);self.assertEqual(self.frames(self.peer),[b'2'])
        other=self.socket(5,self.api,b'other');self.send(0,peer=other)
        self.assertEqual(self.receive()[0],-5);self.assertEqual(self.frames(other),[b'2'])
    def test_repeated_native_worker_teardown(self):
        for _ in range(5):
            handle=C.c_uint64()
            self.assertEqual(LIB.sr_sc01_open(self.ctx,endpoint(),endpoint(),1024,2,10,C.byref(handle)),0)
            self.assertEqual(LIB.sr_sc01_close(C.byref(handle)),0)

class SecureSC01(SC01):
    SECURE=True
    def test_peer_key_comes_from_zap(self):
        self.send(7)
        self.assertEqual(self.receive()[0],0)
        key=C.create_string_buffer(32)
        self.assertEqual(LIB.sr_sc01_peer_key(self.handle,key),0)
        self.assertEqual(key.raw,self.client_keys[2])
        self.assertEqual(LIB.sr_sc01_settle(self.handle,0),0)
        self.assertEqual(self.frames(self.peer),[b'2'])
        self.assertEqual(LIB.sr_sc01_peer_key(self.handle,key),-1)

if __name__=='__main__':unittest.main()
