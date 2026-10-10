## Compile and execute client message constructors without broker connections or data writes.
import std/[asyncdispatch, json]
import ../src/starRouterpkg/[client, proto]
proc canonicalSend(c: Client) {.async.} =
  let doc = %*{"id":"document:one", "dtype":"document", "dataset":"test", "schemaVersion":"0.10.1", "deleted":false}
  await c.emit(newMessage(doc, newDocument, "test", "document"))
  await c.emit(newMessage($doc, newDocument, "test", "document"))

# A missing typ previously defaulted to heartbeat (ordinal 0) and silently
# misrouted document/target messages on the SC01 handoff.
let probe = Client(id: "ir14-local")
for event in [newDocument, updateDocument, deleteDocument, target]:
  let message = probe.newMessage("opaque-payload", event, "ignored", "documents")
  doAssert message.typ == event
  doAssert message.source == probe.id
  doAssert message.topic == "documents"
  doAssert message.data == "opaque-payload"

let canonical = %*{"id": "doc:1", "dtype": "document",
                  "schemaVersion": "0.10.1", "deleted": false}
let document = probe.newMessage(canonical, newDocument, "ignored", "documents")
doAssert document.typ == newDocument
doAssert document.data == canonical

echo "client message event-type checks passed"

# A broker-side NACK (e.g. no target recipient) is not a successful send.
# Test the same response gate used by Client.emit, not a mocked persistence ACK.
proc rejected(reply: string): bool =
  try:
    requireAck(reply)
  except IOError:
    return true
  return false

requireAck($EventType.ack.ord)
doAssert rejected($EventType.nack.ord)
doAssert rejected("ACK")
doAssert rejected("")
doAssert rejected("not-an-ordinal")
echo "client A2A rejection propagation checks passed"
