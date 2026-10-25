"""Real libzmq CURVE/ZAP admission and lifecycle, no mocked transport."""
import ctypes as C
import socket
import sys
import threading
import time
import unittest

LIB = C.CDLL(sys.argv.pop(1))
LIB.zmq_ctx_new.restype = C.c_void_p
LIB.zmq_ctx_term.argtypes = [C.c_void_p]
LIB.zmq_socket.argtypes = [C.c_void_p, C.c_int]
LIB.zmq_socket.restype = C.c_void_p
for name in ("zmq_close",):
    getattr(LIB, name).argtypes = [C.c_void_p]
for name in ("zmq_bind", "zmq_connect"):
    getattr(LIB, name).argtypes = [C.c_void_p, C.c_char_p]
LIB.zmq_setsockopt.argtypes = [C.c_void_p, C.c_int, C.c_void_p, C.c_size_t]
LIB.zmq_send.argtypes = [C.c_void_p, C.c_void_p, C.c_size_t, C.c_int]
LIB.zmq_recv.argtypes = [C.c_void_p, C.c_void_p, C.c_size_t, C.c_int]
LIB.zmq_curve_keypair.argtypes = [C.c_void_p, C.c_void_p]
LIB.zmq_z85_decode.argtypes = [C.c_void_p, C.c_char_p]
LIB.zmq_z85_decode.restype = C.c_void_p
LIB.sr_auth_start.argtypes = [C.c_void_p, C.c_void_p, C.c_size_t,
                             C.POINTER(C.c_uint64)]
LIB.sr_auth_close.argtypes = [C.POINTER(C.c_uint64)]
LIB.sr_open_secure.argtypes = [C.c_void_p, C.c_char_p, C.c_char_p,
                              C.c_uint32, C.c_uint32, C.c_uint32, C.c_void_p,
                              C.POINTER(C.c_uint64)]
LIB.sr_close.argtypes = [C.POINTER(C.c_uint64)]
LIB.sr_peer_key.argtypes = [C.c_uint64, C.c_void_p]
LIB.sr_receive.argtypes = [C.c_uint64, C.c_void_p, C.c_size_t,
                          C.POINTER(C.c_size_t), C.c_void_p, C.c_size_t,
                          C.POINTER(C.c_size_t)]


def keypair():
    public, secret = C.create_string_buffer(41), C.create_string_buffer(41)
    if LIB.zmq_curve_keypair(public, secret):
        raise RuntimeError("libzmq CURVE unavailable")
    raw = C.create_string_buffer(32)
    if not LIB.zmq_z85_decode(raw, public):
        raise RuntimeError("invalid CURVE key")
    return public.value, secret.value, raw.raw


class Security(unittest.TestCase):
    def setUp(self):
        self.context = LIB.zmq_ctx_new()
        self.assertTrue(self.context)
        self.token = C.c_uint64()
        self.sockets = []
        self.client = keypair()
        self.assertEqual(LIB.sr_auth_start(self.context, self.client[2], 1,
                                          C.byref(self.token)), 0)

    def tearDown(self):
        for sock in self.sockets:
            self.assertEqual(LIB.zmq_close(sock), 0)
        self.assertEqual(LIB.sr_auth_close(C.byref(self.token)), 0)
        self.assertEqual(LIB.zmq_ctx_term(self.context), 0)

    def option(self, sock, key, value):
        if isinstance(value, int):
            number = C.c_int(value)
            status = LIB.zmq_setsockopt(sock, key, C.byref(number), C.sizeof(number))
        else:
            status = LIB.zmq_setsockopt(sock, key, value, len(value))
        self.assertEqual(status, 0)

    def sock(self, kind):
        result = LIB.zmq_socket(self.context, kind)
        self.assertTrue(result)
        self.sockets.append(result)
        for key, value in [(17, 0), (27, 350), (28, 350)]:
            self.option(result, key, value)
        return result

    def test_real_curve_authorized_and_wrong_key(self):
        server_keys = keypair()
        router = self.sock(6)
        self.option(router, 47, 1)  # CURVE_SERVER
        self.option(router, 49, server_keys[1])  # CURVE_SECRETKEY
        self.option(router, 55, b"starrouter.loopback")  # ZAP_DOMAIN
        with socket.socket() as reserve:
            reserve.bind(("127.0.0.1", 0))
            endpoint = f"tcp://127.0.0.1:{reserve.getsockname()[1]}".encode()
        self.assertEqual(LIB.zmq_bind(router, endpoint), 0)
        peers = []
        for keys in (self.client, keypair()):
            peer = self.sock(5)
            self.option(peer, 48, keys[0])
            self.option(peer, 49, keys[1])
            self.option(peer, 50, server_keys[0])
            self.assertEqual(LIB.zmq_connect(peer, endpoint), 0)
            peers.append(peer)
        self.assertEqual(LIB.zmq_send(peers[0], b"authorized", 10, 0), 10)
        frame = C.create_string_buffer(1024)
        self.assertGreater(LIB.zmq_recv(router, frame, 1024, 0), 0)  # route
        self.assertEqual(LIB.zmq_recv(router, frame, 1024, 0), 10)
        self.assertEqual(frame.raw[:10], b"authorized")
        self.assertEqual(LIB.zmq_send(peers[1], b"denied", 6, 0), 6)
        self.assertEqual(LIB.zmq_recv(router, frame, 1024, 0), -1)

    def test_secure_embedding_uses_key_not_claimed_routing_identity(self):
        keys = keypair()
        secret = C.create_string_buffer(32)
        self.assertTrue(LIB.zmq_z85_decode(secret, keys[1]))
        with socket.socket() as reserve:
            reserve.bind(("127.0.0.1", 0))
            endpoint = f"tcp://127.0.0.1:{reserve.getsockname()[1]}".encode()
        handle = C.c_uint64()
        self.assertEqual(LIB.sr_open_secure(self.context, endpoint,
            b"star.actor2actor/1", 1024, 4, 350, secret, C.byref(handle)), 0)
        try:
            peer = self.sock(5)
            self.option(peer, 5, b"forged-administrator")
            self.option(peer, 48, self.client[0])
            self.option(peer, 49, self.client[1])
            self.option(peer, 50, keys[0])
            self.assertEqual(LIB.zmq_connect(peer, endpoint), 0)
            self.assertEqual(LIB.zmq_send(peer, b"body", 4, 0), 4)
            route, body = C.create_string_buffer(255), C.create_string_buffer(1024)
            rn, bn = C.c_size_t(), C.c_size_t()
            self.assertEqual(LIB.sr_receive(handle, route, 255, C.byref(rn),
                                            body, 1024, C.byref(bn)), 0)
            self.assertEqual(route.raw[:rn.value], b"forged-administrator")
            principal = C.create_string_buffer(32)
            self.assertEqual(LIB.sr_peer_key(handle, principal), 0)
            self.assertEqual(principal.raw, self.client[2])
        finally:
            self.assertEqual(LIB.sr_close(C.byref(handle)), 0)

    def zap(self, frames):
        request = self.sock(3)  # REQ
        self.assertEqual(LIB.zmq_connect(request, b"inproc://zeromq.zap.01"), 0)
        for i, value in enumerate(frames):
            self.assertEqual(LIB.zmq_send(request, value, len(value),
                                         2 if i < len(frames)-1 else 0), len(value))
        result = []
        for _ in range(6):
            frame = C.create_string_buffer(1024)
            n = LIB.zmq_recv(request, frame, 1024, 0)
            self.assertGreaterEqual(n, 0)
            result.append(frame.raw[:n])
        return result

    def test_zap_strict_frames_domain_address_and_identity(self):
        good = [b"1.0", b"1", b"starrouter.loopback", b"127.0.0.1",
                b"untrusted-route", b"CURVE", self.client[2]]
        result = self.zap(good)
        self.assertEqual(result[2], b"200")
        self.assertEqual(result[4], self.client[2].hex().encode())
        for index, value in [(0,b"2.0"),(2,b"other"),(3,b"192.0.2.1"),
                             (5,b"NULL"),(6,b"short")]:
            bad = good.copy()
            bad[index] = value
            self.assertEqual(self.zap(bad)[2], b"400")
        self.assertEqual(self.zap(good[:6])[2], b"400")

    def test_duplicate_owner_validation_and_restart(self):
        other = C.c_uint64()
        self.assertEqual(LIB.sr_auth_start(self.context, self.client[2], 1,
                                          C.byref(other)), -2)
        self.assertEqual(other.value, 0)
        for count in (0, 1025):
            self.assertEqual(LIB.sr_auth_start(self.context, self.client[2], count,
                                              C.byref(other)), -1)
        results = []
        thread = threading.Thread(target=lambda: results.append(
            LIB.sr_auth_close(C.byref(self.token))))
        thread.start()
        thread.join(1)
        self.assertEqual(results, [-3])
        for _ in range(5):
            before = time.monotonic()
            self.assertEqual(LIB.sr_auth_close(C.byref(self.token)), 0)
            self.assertLess(time.monotonic()-before, 1.0)
            self.assertEqual(LIB.sr_auth_close(C.byref(self.token)), 0)
            self.assertEqual(LIB.sr_auth_start(self.context, self.client[2], 1,
                                              C.byref(self.token)), 0)

    def test_excess_frames_keep_zap_bound_and_shutdown_bounded(self):
        request = self.sock(3)
        self.assertEqual(LIB.zmq_connect(request, b"inproc://zeromq.zap.01"), 0)
        for i in range(8):
            self.assertEqual(LIB.zmq_send(request, b"bad", 3, 2 if i<7 else 0), 3)
        frame = C.create_string_buffer(128)
        self.assertEqual(LIB.zmq_recv(request, frame, 128, 0), -1)
        duplicate = C.c_uint64()
        self.assertEqual(LIB.sr_auth_start(self.context, self.client[2], 1,
                                          C.byref(duplicate)), -2)
        before = time.monotonic()
        self.assertEqual(LIB.sr_auth_close(C.byref(self.token)), 0)
        self.assertLess(time.monotonic()-before, 1.0)


if __name__ == "__main__":
    unittest.main()
