## No broker required: assert the exact action table and lossless actor routing.
import ../src/starRouterpkg/[server, proto]

for event in [newDocument, updateDocument, deleteDocument]:
  doAssert dispatchAction(event) == relayDocument
doAssert dispatchAction(EventType.register) == registerClient
doAssert dispatchAction(heartbeat) == heartbeatClient
doAssert dispatchAction(target) == routeTarget
for event in [ack, nack, getDocument]:
  doAssert dispatchAction(event) == rejectEvent

let canonical = """{"id":"target:one","dataset":"test","dtype":"target","schemaVersion":"0.10.1","ready":false,"extra":null}"""
let incoming = Message[string](id: "message-1", source: "client-with-hyphens",
    time: 1750000000, typ: target, topic: "star:v1:collector:wireless",
    data: canonical)
let forwarded = routedTarget(incoming, "worker-abc-123")
doAssert incoming.topic == "star:v1:collector:wireless"
doAssert incoming.typ == target
doAssert forwarded.topic == "worker-abc-123"
doAssert forwarded.typ == target
doAssert forwarded.source == incoming.source
doAssert forwarded.id == incoming.id
doAssert forwarded.time == incoming.time
doAssert forwarded.data == canonical
forwarded.topic = "different-worker"
doAssert incoming.topic == "star:v1:collector:wireless"
echo "single-action dispatch and canonical target forwarding checks passed"
