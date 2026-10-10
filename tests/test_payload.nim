import std/json
import ../src/starRouterpkg/payload
let wire = """{"id":"document:one","dataset":"test","dtype":"document","schemaVersion":"0.10.1","deleted":false,"extensions":{"opaque":null}}"""
doAssert encodePayload(wire) == wire
doAssert parseJson(encodePayload(parseJson(wire))) == parseJson(wire)
doAssert encodePayload(encodePayload(wire)) == wire
# Control messages and historical payloads remain opaque; the broker is not a schema authority.
doAssert encodePayload("heartbeat") == "heartbeat"
echo "payload roundtrip checks passed"
