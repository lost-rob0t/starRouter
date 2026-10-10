"""Real ZeroMQ regression for one SC01 actor ID registered on two services.

The launched executable imports the production Nim broker, configured with a
one-second timeout and one liveness credit. A document publisher active on the
same DEALER must keep both owned registrations alive. A historical first-match
heartbeat refresh incorrectly lets the other registration expire.
"""
import json
import socket
import subprocess
import sys
import time

import zmq

ACTOR_ID = b"ss12-multiservice-probe"
SERVICES = (b"ss12-alpha", b"ss12-beta")
DOCUMENT = json.dumps({
    "id": "ss12:liveness:person",
    "dataset": "fixture",
    "dtype": "person",
    "schemaVersion": "0.10.1",
    "fname": "Ada",
})


def require(predicate, detail):
    if not predicate:
        raise AssertionError(detail)


def unused_address():
    with socket.socket() as sock:
        sock.bind(("127.0.0.1", 0))
        return f"tcp://127.0.0.1:{sock.getsockname()[1]}"


def verify(native_broker):
    pub_address = unused_address()
    api_address = unused_address()
    while api_address == pub_address:
        api_address = unused_address()

    process = subprocess.Popen(
        [native_broker, pub_address, api_address],
        stdout=subprocess.DEVNULL,
        stderr=subprocess.PIPE,
    )
    context = zmq.Context()
    api = context.socket(zmq.DEALER)
    api.setsockopt(zmq.IDENTITY, ACTOR_ID)
    api.setsockopt(zmq.RCVTIMEO, 5000)
    api.setsockopt(zmq.SNDTIMEO, 5000)
    api.connect(api_address)

    def send(event, topic, payload=""):
        api.send_multipart([
            b"", b"SC01", ACTOR_ID,
            f"wire-{time.monotonic_ns()}".encode(),
            str(int(time.time())).encode(),
            str(event).encode(), topic, payload.encode(),
        ])
        return api.recv_multipart()

    try:
        for service in SERVICES:
            require(send(7, service) == [b"1"],
                    f"register failed for {service!r}")
        completed = 0
        deadline = time.monotonic() + 4.5
        while time.monotonic() < deadline:
            require(send(3, b"documents", DOCUMENT) == [b"1"],
                    "registered producer's valid canonical document was rejected")
            completed += 1
            time.sleep(0.20)
        require(completed >= 12, "activity probe did not cross expiry window")
        for service in SERVICES:
            require(send(0, service) == [b"1"],
                    f"active source lost its {service!r} registration")
        require(send(3, b"documents", DOCUMENT) == [b"1"],
                "post-heartbeat document publication failed")
        print(f"native real broker multiservice liveness PASS ({completed} canonical publications, two retained services)")
    finally:
        api.close(linger=0)
        context.term()
        process.terminate()
        try:
            process.wait(timeout=5)
        except subprocess.TimeoutExpired:
            process.kill()
            process.wait(timeout=5)
        if process.stderr is not None:
            process.stderr.close()


if __name__ == "__main__":
    if len(sys.argv) != 2:
        raise SystemExit("usage: multiservice_liveness.py <native-broker-fixture>")
    verify(sys.argv[1])
