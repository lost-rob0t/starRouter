"""Actual local ZeroMQ broker protocol and complete generated dtype inventory."""
import json
from pathlib import Path
import socket
import subprocess
import sys
import time
import tempfile
import zmq

root = Path(__file__).resolve().parents[1]
schema = json.loads((root / "schemas/starintel-0.10.1/generated/schema.json").read_text())
manifest = json.loads((root / "schemas/starintel-0.10.1/generated/portable-manifest.json").read_text())
research_fixtures = json.loads((root / "schemas/starintel-0.10.1/research-fixtures.json").read_text())
raw_key_contract = json.loads((root / "fixtures/raw-json-unique-keys.json").read_text())

minimal_operation = next(
    fixture["document"]
    for fixture in research_fixtures
    if fixture["name"] == "minimal-operation" and fixture["valid"]
)
assert raw_key_contract["contract"] == "starintel.raw-json-unique-keys/1"
assert sum(case["valid"] for case in raw_key_contract["cases"]) == 9
assert sum(not case["valid"] for case in raw_key_contract["cases"]) == 18

def sample(node):
    if "$ref" in node:
        return sample(schema["$defs"][node["$ref"].split("/")[-1]])
    if "enum" in node:
        return node["enum"][0]
    if "anyOf" in node:
        return sample(node["anyOf"][0])
    kind = node.get("type")
    if kind == "object":
        return {key: sample(node["properties"][key]) for key in node.get("required", [])}
    if kind == "array": return []
    if kind in ("integer", "number"): return node.get("minimum", 0)
    if kind == "boolean": return False
    if node.get("format") == "date-time": return "2026-10-04T12:00:00Z"
    if node.get("format") == "date": return "2026-10-04"
    if node.get("format") == "uri": return "https://example.test/"
    if "pattern" in node:
        if "@" in node["pattern"]: return "fixture@example.test"
        if "0-9()." in node["pattern"]: return "+123456789"
        return "0"
    return "fixture"

def address():
    with socket.socket() as s:
        s.bind(("127.0.0.1", 0))
        return f"tcp://127.0.0.1:{s.getsockname()[1]}"

pub_address, api_address = address(), address()
process = subprocess.Popen([sys.argv[1], "--pubAddress=" + pub_address, "--apiAddress=" + api_address], stdout=subprocess.DEVNULL, stderr=subprocess.PIPE)
context = zmq.Context()
api = context.socket(zmq.DEALER)
api.setsockopt(zmq.IDENTITY, b"test-actor")
api.setsockopt(zmq.RCVTIMEO, 5000)
api.setsockopt(zmq.SNDTIMEO, 5000)
api.connect(api_address)
subscriber = context.socket(zmq.SUB)
subscriber.setsockopt(zmq.SUBSCRIBE, b"documents")
subscriber.setsockopt(zmq.RCVTIMEO, 5000)
subscriber.connect(pub_address)

def send(event, payload, topic=b"documents"):
    api.send_multipart([b"", b"SC01", b"test-actor", b"wire-id", str(int(time.time())).encode(), str(event).encode(), topic, payload.encode()])
    return api.recv_multipart()

try:
    assert send(7, "", b"test") == [b"1"]
    # Allow the ZeroMQ subscription handshake to finish.
    time.sleep(0.3)

    document_entries = [entry for entry in manifest["types"] if entry["kind"] == "document"]
    persistent_entries = [
        entry for entry in document_entries
        if entry.get("persistence", "persistent") == "persistent"
    ]
    transient_entries = [
        entry for entry in document_entries
        if entry.get("persistence", "persistent") != "persistent"
    ]
    assert len(document_entries) == 123
    assert len(persistent_entries) == 90
    assert len(transient_entries) == 33

    count = 0
    target_wire = None
    file_wire = None
    for entry in persistent_entries:
        dtype = entry["name"].split("/")[-1]
        name = "".join(word.capitalize() for word in dtype.split("-"))
        if dtype == "operation":
            document = dict(minimal_operation)
        else:
            document = sample(schema["$defs"][name])
        document.update(id="fixture:" + dtype, dataset="test", dtype=dtype, schemaVersion="0.10.1",
                        extensions={"opaque": {"flag": False, "nil": None, "items": []}})
        wire = json.dumps(document)
        if dtype == "target": target_wire = wire
        if dtype == "file": file_wire = wire
        assert send(3, wire) == [b"1"], dtype
        frames = subscriber.recv_multipart()
        assert len(frames) == 6 and frames[-1].decode() == wire, (dtype, frames)
        assert not subscriber.poll(30), "duplicate publication"
        count += 1
    assert count == 90

    # All three optional File flags have generated default-bearing allOf
    # constraints. Required-only inventory fixtures omit these fields, so the
    # inventory alone cannot detect a validator that silently skips allOf.
    assert file_wire is not None
    file_document = json.loads(file_wire)
    for field in ("quarantined", "executable", "trustFilenameExtension"):
        assert field not in file_document
        for value in (None, False, True, "false", False):
            candidate = dict(file_document)
            if value is not None:
                candidate[field] = value
            candidate_wire = json.dumps(candidate)
            if isinstance(value, str):
                assert send(3, candidate_wire) == [b"2"], (field, value)
                assert not subscriber.poll(100), (field, "invalid allOf value published")
            else:
                assert send(3, candidate_wire) == [b"1"], (field, value)
                frames = subscriber.recv_multipart()
                assert len(frames) == 6 and frames[-1].decode() == candidate_wire, (field, value, frames)
                assert not subscriber.poll(30), (field, "duplicate publication")

    for case in raw_key_contract["cases"]:
        raw_wire = case["wire"]
        if case["valid"]:
            assert send(3, raw_wire) == [b"1"], case["name"]
            frames = subscriber.recv_multipart()
            assert len(frames) == 6 and frames[-1].decode() == raw_wire, (case["name"], frames)
            assert not subscriber.poll(30), "duplicate raw fixture publication"
        else:
            assert send(3, raw_wire) == [b"2"], case["name"]
            assert not subscriber.poll(100), "invalid raw fixture published"

    invalid = [{"_id": "old", "dtype": "person", "schema_version": "0.10.1", "data": {}},
               {**document, "schemaVersion": "0.10.2"}, {**document, "confidence": "1.1"}, []]
    for value in invalid:
        assert send(3, json.dumps(value)) == [b"2"]
        assert not subscriber.poll(100), "invalid document published"
    # A rejection must leave multipart state usable for the next valid message.
    assert send(6, wire) == [b"1"]
    assert subscriber.recv_multipart()[-1].decode() == wire
    assert not subscriber.poll(100)
    if len(sys.argv) > 2:
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "document.json"
            path.write_text(wire)
            result = subprocess.run([sys.argv[2], pub_address, api_address, str(path)],
                                    capture_output=True, text=True, timeout=15)
            assert result.returncode == 0, result.stderr
            assert "native client emit PASS" in result.stdout
            assert "native JsonNode exact-number receive/re-emit PASS (18 messages)" in result.stdout
            print(result.stdout.strip())
            assert json.loads(subscriber.recv_multipart()[-1]) == document
            person = json.loads(subscriber.recv_multipart()[-1])
            assert person["id"] == "native:person" and person["schemaVersion"] == "0.10.1" and person["deleted"] is False
            assert not subscriber.poll(100)
    subscriber.setsockopt(zmq.SUBSCRIBE, b"test-actor")
    time.sleep(0.3)
    assert send(8, target_wire, b"test") == [b"1"]
    frames = subscriber.recv_multipart()
    assert frames[0] == b"test-actor" and frames[4] == b"3" and frames[-1].decode() == target_wire
    legacy = {"_id":"starintel:person:test","dataset":"test","dtype":"person","schema_version":"0.9.0",
              "version":1,"date_added":"2026-10-04T00:00:00Z","date_updated":"2026-10-04T00:00:00Z",
              "sources":[],"evidence":[],"data":{"fname":"Ada"},"extensions":{"opaque":{"flag":False,"nil":None}}}
    legacy_wire = json.dumps(legacy)
    assert send(3, legacy_wire) == [b"1"]
    assert subscriber.recv_multipart()[-1].decode() == legacy_wire
    del legacy["_id"]
    assert send(3, json.dumps(legacy)) == [b"2"]
    assert not subscriber.poll(100)
    print("real ZeroMQ broker: 90 persistent dtypes, 33 transient definitions excluded, 3 default-bearing allOf flags, 27 raw-key cases, exact payloads, single publication, NACK/no publication, recovery PASS")
finally:
    api.close(linger=0)
    subscriber.close(linger=0)
    context.term()
    process.terminate()
    try: process.wait(timeout=5)
    except subprocess.TimeoutExpired:
        process.kill()
        process.wait(timeout=5)
