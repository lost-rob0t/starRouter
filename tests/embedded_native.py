"""Actual native library + libzmq loopback tests; no mock transport."""
import ctypes as C
import socket
import sys
import threading
import time
import unittest


LIB = C.CDLL(sys.argv.pop(1))
# Resolve dependency symbols through the loaded library: exactly the same libzmq.
ZMQ = LIB
ZMQ.zmq_ctx_new.restype = C.c_void_p
ZMQ.zmq_ctx_term.argtypes = [C.c_void_p]
ZMQ.zmq_socket.argtypes = [C.c_void_p, C.c_int]
ZMQ.zmq_socket.restype = C.c_void_p
ZMQ.zmq_close.argtypes = [C.c_void_p]
ZMQ.zmq_connect.argtypes = [C.c_void_p, C.c_char_p]
ZMQ.zmq_setsockopt.argtypes = [C.c_void_p, C.c_int, C.c_void_p, C.c_size_t]
ZMQ.zmq_send.argtypes = [C.c_void_p, C.c_void_p, C.c_size_t, C.c_int]
ZMQ.zmq_recv.argtypes = [C.c_void_p, C.c_void_p, C.c_size_t, C.c_int]
LIB.sr_abi_version.restype = C.c_uint32
LIB.sr_open.argtypes = [C.c_void_p, C.c_char_p, C.c_char_p, C.c_uint32,
                        C.c_uint32, C.c_uint32, C.POINTER(C.c_uint64)]
LIB.sr_receive.argtypes = [C.c_uint64, C.c_void_p, C.c_size_t,
                           C.POINTER(C.c_size_t), C.c_void_p, C.c_size_t,
                           C.POINTER(C.c_size_t)]
LIB.sr_send.argtypes = [C.c_uint64, C.c_void_p, C.c_size_t, C.c_void_p, C.c_size_t]
LIB.sr_close.argtypes = [C.POINTER(C.c_uint64)]


def endpoint():
    with socket.socket() as s:
        s.bind(("127.0.0.1", 0))
        return f"tcp://127.0.0.1:{s.getsockname()[1]}".encode()


class Embedded(unittest.TestCase):
    def setUp(self):
        self.ctx = ZMQ.zmq_ctx_new()
        self.assertTrue(self.ctx)
        self.handle = C.c_uint64()
        self.address = endpoint()
        self.assertEqual(LIB.sr_open(self.ctx, self.address, b"star.actor2actor/1",
                                     1024, 4, 100, C.byref(self.handle)), 0)
        self.peer = ZMQ.zmq_socket(self.ctx, 5)  # ZMQ_DEALER
        self.assertTrue(self.peer)
        identity = b"fixture"
        self.assertEqual(ZMQ.zmq_setsockopt(self.peer, 5, identity, len(identity)), 0)
        for key, value in [(17, 0), (27, 1000), (28, 1000)]:
            option = C.c_int(value)
            self.assertEqual(ZMQ.zmq_setsockopt(self.peer, key, C.byref(option),
                                               C.sizeof(option)), 0)
        self.assertEqual(ZMQ.zmq_connect(self.peer, self.address), 0)

    def send(self, body, flags=0):
        self.assertEqual(ZMQ.zmq_send(self.peer, body, len(body), flags), len(body))

    def recv(self):
        body = C.create_string_buffer(2048)
        n = ZMQ.zmq_recv(self.peer, body, len(body), 0)
        self.assertGreaterEqual(n, 0)
        return body.raw[:n]

    def tearDown(self):
        self.assertEqual(ZMQ.zmq_close(self.peer), 0)
        self.assertEqual(LIB.sr_close(C.byref(self.handle)), 0)
        # Do not terminate via shadow: context belongs to host.
        self.assertEqual(ZMQ.zmq_ctx_term(self.ctx), 0)

    def receive(self, rcap=255, bcap=1024):
        route, body = C.create_string_buffer(rcap), C.create_string_buffer(bcap)
        rn, bn = C.c_size_t(), C.c_size_t()
        status = LIB.sr_receive(self.handle, route, rcap, C.byref(rn),
                                body, bcap, C.byref(bn))
        return status, route.raw[:rn.value], body.raw[:bn.value], rn.value, bn.value

    def test_version_roundtrip_exact_bytes(self):
        self.assertEqual(LIB.sr_abi_version(), 1)
        body = b'{"messageId":"synthetic/1","number":9007199254740993}'
        self.send(body)
        status, route, received, _, _ = self.receive()
        self.assertEqual((status, route, received), (0, b"fixture", body))
        self.assertEqual(LIB.sr_send(self.handle, route, len(route), body, len(body)), 0)
        self.assertEqual(self.recv(), body)

    def test_timeout(self):
        self.assertEqual(self.receive()[0], 1)

    def test_buffer_retry_does_not_drop(self):
        self.send(b"retained")
        self.assertEqual(self.receive(1, 1)[::3], (2, 7))
        self.assertEqual(self.receive()[:3], (0, b"fixture", b"retained"))

    def test_unexpected_multipart_poisoned(self):
        self.send(b"body", 2)
        self.send(b"extra")
        self.assertEqual(self.receive()[0], -5)
        self.assertEqual(self.receive()[0], -6)

    def test_wrong_owner_and_stale_handle(self):
        results = []
        thread = threading.Thread(target=lambda: results.append(self.receive()[0]))
        thread.start(); thread.join(2)
        self.assertFalse(thread.is_alive())
        self.assertEqual(results, [-3])
        old = self.handle.value
        self.assertEqual(LIB.sr_close(C.byref(self.handle)), 0)
        self.assertEqual(LIB.sr_close(C.byref(self.handle)), 0)
        self.assertEqual(LIB.sr_send(old, b"fixture", 7, b"x", 1), -6)

    def test_profile_and_public_endpoint_rejected(self):
        other = C.c_uint64()
        self.assertEqual(LIB.sr_open(self.ctx, endpoint(), b"SC01", 1024, 4, 100,
                                     C.byref(other)), -4)
        self.assertEqual(LIB.sr_open(self.ctx, b"tcp://*:6001", b"star.actor2actor/1",
                                     1024, 4, 100, C.byref(other)), -1)
        self.assertEqual(other.value, 0)

    def test_unknown_route_and_oversize(self):
        self.assertEqual(LIB.sr_send(self.handle, b"absent", 6, b"x", 1), -7)
        self.assertEqual(LIB.sr_send(self.handle, b"fixture", 7, b"x" * 1025, 1025), -1)

    def test_independent_owner_is_not_blocked_by_receive(self):
        ready = threading.Event()
        results = []
        def other_owner():
            handle = C.c_uint64()
            status = LIB.sr_open(self.ctx, endpoint(), b"star.actor2actor/1",
                                 128, 1, 800, C.byref(handle))
            results.append(status)
            ready.set()
            if status == 0:
                rn, bn = C.c_size_t(), C.c_size_t()
                route, body = C.create_string_buffer(255), C.create_string_buffer(128)
                results.append(LIB.sr_receive(handle, route, 255, C.byref(rn),
                                              body, 128, C.byref(bn)))
                results.append(LIB.sr_close(C.byref(handle)))
        worker = threading.Thread(target=other_owner)
        worker.start()
        self.assertTrue(ready.wait(2))
        time.sleep(0.03)
        started = time.monotonic()
        self.assertEqual(self.receive()[0], 1)
        self.assertLess(time.monotonic() - started, 0.6)
        worker.join(2)
        self.assertFalse(worker.is_alive())
        self.assertEqual(results, [0, 1, 0])

    def test_repeated_init_close(self):
        for _ in range(20):
            other = C.c_uint64()
            self.assertEqual(LIB.sr_open(self.ctx, endpoint(), b"star.actor2actor/1",
                                         128, 1, 10, C.byref(other)), 0)
            self.assertEqual(LIB.sr_close(C.byref(other)), 0)


if __name__ == "__main__":
    unittest.main()
