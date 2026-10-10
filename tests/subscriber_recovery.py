"""Run a native Nim subscriber over real ZeroMQ against bad then good frames.

The producer/control endpoint is a Python fixture, not a compiled StarRouter
broker. The consumer is the actual compiled Nim client implementation.
"""
import socket
import subprocess
import sys
import time
import zmq


def address():
    with socket.socket() as s:
        s.bind(("127.0.0.1", 0))
        return f"tcp://127.0.0.1:{s.getsockname()[1]}"


def run(binary):
    ctx = zmq.Context()
    publisher, router = ctx.socket(zmq.PUB), ctx.socket(zmq.ROUTER)
    publisher.setsockopt(zmq.LINGER, 0)
    router.setsockopt(zmq.LINGER, 0)
    pub_address, api_address = address(), address()
    publisher.bind(pub_address)
    router.bind(api_address)
    router.setsockopt(zmq.RCVTIMEO, 5000)
    native = subprocess.Popen([binary, pub_address, api_address],
                              stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                              text=True)
    try:
        registration = router.recv_multipart()
        assert len(registration) == 9, registration
        assert registration[2] == b"SC01", registration
        assert registration[6] == b"7", registration
        router.send_multipart([registration[0], b"1"])
        # Allow the subscription to reach the PUB peer before sending fixtures.
        time.sleep(0.4)
        now = str(int(time.time())).encode()
        for stamp, kind, ident in [
            (b"invalid-time", b"7", b"bad-time"),
            (b"9223372036854775808", b"7", b"overflow-time"),
            (now, b"not-an-event", b"bad-type"),
            (now, b"9999", b"out-of-range-type"),
            (now, b"7", b"healthy-message"),
        ]:
            publisher.send_multipart([b"fixture", b"publisher", ident,
                                      stamp, kind, b""])
            time.sleep(0.05)
        out, err = native.communicate(timeout=12)
        assert native.returncode == 0, f"native exit={native.returncode}\n{out}\n{err}"
        assert "native PUB/SUB malformed frame recovery PASS" in out, out
        print(out.strip())
    finally:
        if native.poll() is None:
            native.kill()
            native.communicate(timeout=5)
        publisher.close()
        router.close()
        ctx.term()


if __name__ == "__main__":
    if len(sys.argv) != 2:
        raise SystemExit("usage: subscriber_recovery.py <native Nim fixture>")
    run(sys.argv[1])
