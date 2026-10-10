"""Real ZeroMQ SC01 malformed-event recovery: no NACK means RED."""
import socket
import subprocess
import sys
import time
import zmq


def endpoint_pair():
    with socket.socket() as a, socket.socket() as b:
        a.bind(("127.0.0.1", 0))
        b.bind(("127.0.0.1", 0))
        return (f"tcp://127.0.0.1:{a.getsockname()[1]}",
                f"tcp://127.0.0.1:{b.getsockname()[1]}")


def main(broker):
    publish, api = endpoint_pair()
    process = subprocess.Popen([broker, "--pubAddress=" + publish,
                                "--apiAddress=" + api],
                               stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    context = zmq.Context()
    dealer = context.socket(zmq.DEALER)
    dealer.setsockopt(zmq.IDENTITY, b"malformed-probe-actor")
    dealer.setsockopt(zmq.LINGER, 0)
    dealer.setsockopt(zmq.RCVTIMEO, 3000)
    dealer.setsockopt(zmq.SNDTIMEO, 3000)
    dealer.connect(api)

    def request(timestamp, event):
        dealer.send_multipart([b"", b"SC01", b"malformed-probe-actor",
                              b"wire-id", timestamp, event,
                              b"malformed-probe", b""])
        return dealer.recv_multipart()

    now = str(int(time.time())).encode("ascii")
    try:
        # Baseline crashes/strands the reply and leaves pending ROUTER frames.
        # The corrected broker must reject EVERY invalid message decisively.
        for timestamp, event in [
            (b"not-a-time", b"7"),
            (b"9223372036854775808", b"7"),
            (b"-9223372036854775809", b"7"),
            (now, b"not-an-event"),
            (now, b"9223372036854775808"),
            (now, b"-1"),
            (now, b"99"),
        ]:
            reply = request(timestamp, event)
            assert reply == [b"2"], (timestamp, event, reply)
        # A malformed request must not poison the stream or implicitly enroll.
        assert request(now, b"7") == [b"1"]  # explicit register
        assert request(now, b"0") == [b"1"]  # registered heartbeat
        print("real ZeroMQ SC01 invalid timestamp/event NACK and recovery PASS")
    finally:
        dealer.close()
        context.term()
        process.terminate()
        try:
            process.wait(timeout=5)
        except subprocess.TimeoutExpired:
            process.kill()
            process.wait(timeout=5)


if __name__ == "__main__":
    if len(sys.argv) != 2:
        raise SystemExit("usage: broker_malformed_frames.py <compiled-starRouter>")
    main(sys.argv[1])
