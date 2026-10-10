"""Real ZeroMQ regression: idle string inbox must keep its actor registered."""
import subprocess
import sys
import time

import zmq


def verify_frame(frames, event, actor_id=None):
    assert len(frames) == 9, frames
    assert frames[1] == b"" and frames[2] == b"SC01", frames
    assert frames[6] == str(event).encode() and frames[7] == b"idle-actor", frames
    if actor_id is not None:
        assert frames[0] == actor_id, frames
    return frames[0]


def main(client_executable):
    context = zmq.Context()
    api = context.socket(zmq.ROUTER)
    pub = context.socket(zmq.PUB)
    api.linger = pub.linger = 0
    api.setsockopt(zmq.RCVTIMEO, 6000)
    api.bind("tcp://127.0.0.1:*")
    pub.bind("tcp://127.0.0.1:*")
    api_address = api.getsockopt_string(zmq.LAST_ENDPOINT)
    pub_address = pub.getsockopt_string(zmq.LAST_ENDPOINT)
    process = subprocess.Popen(
        [client_executable, pub_address, api_address],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )
    try:
        identity = verify_frame(api.recv_multipart(), 7)
        start = time.monotonic()
        api.send_multipart([identity, b"1"])
        verify_frame(api.recv_multipart(), 0, identity)
        elapsed = time.monotonic() - start
        assert 0.5 <= elapsed <= 5.5, f"wrong idle poll interval: {elapsed:.3f}s"
        api.send_multipart([identity, b"1"])
        assert process.poll() is None, "native client exited during idle heartbeat"
        print(f"native idle inbox real ZeroMQ heartbeat PASS ({elapsed:.2f}s)")
    finally:
        process.terminate()
        try:
            _, stderr = process.communicate(timeout=3)
        except subprocess.TimeoutExpired:
            process.kill()
            _, stderr = process.communicate(timeout=3)
        api.close()
        pub.close()
        context.term()
        if process.returncode not in (0, -15):
            print(stderr.decode(errors="replace"), file=sys.stderr)


if __name__ == "__main__":
    assert len(sys.argv) == 2
    main(sys.argv[1])
