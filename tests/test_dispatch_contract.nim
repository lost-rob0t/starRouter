## No broker required: assert the exact action table and lossless actor routing.
import ../src/starRouterpkg/[server, proto]

for event in [newDocument, updateDocument]:
  doAssert dispatchAction(event) == relayDocument
doAssert dispatchAction(EventType.register) == registerClient
doAssert dispatchAction(heartbeat) == heartbeatClient
doAssert dispatchAction(target) == routeTarget
for event in [ack, nack, getDocument, deleteDocument]:
  doAssert dispatchAction(event) == rejectEvent

let canonical = """{"id":"target:one","dataset":"test","dtype":"target","schemaVersion":"0.10.1","ready":false,"extra":null}"""
let incoming = Message[string](id: "message-1", source: "client-with-hyphens",
    time: 1750000000, typ: target, topic: "star:v1:collector:wireless",
    data: canonical)
let forwarded = routedTarget(incoming, "worker-abc-123")
doAssert incoming.topic == "star:v1:collector:wireless"
doAssert incoming.typ == target
doAssert forwarded.topic == "worker-abc-123"
doAssert forwarded.typ == newDocument
doAssert forwarded.source == incoming.source
doAssert forwarded.id == incoming.id
doAssert forwarded.time == incoming.time
doAssert forwarded.data == canonical
forwarded.topic = "different-worker"
doAssert incoming.topic == "star:v1:collector:wireless"
echo "single-action dispatch and canonical target forwarding checks passed"

# Verify the exact frames consumed by the production PUB encoder. A relay must
# never overwrite the originating event time with the broker's local clock.
let incomingFrames = forwardedFrames(incoming)
doAssert incomingFrames == [
  "star:v1:collector:wireless",
  "client-with-hyphens",
  "message-1",
  "1750000000",
  $target.ord,
  canonical
]
let forwardedFramesOnWire = forwardedFrames(forwarded)
doAssert forwardedFramesOnWire[0] == "different-worker"
doAssert forwardedFramesOnWire[3] == incomingFrames[3]
doAssert forwardedFramesOnWire[5] == canonical
let update = Message[string](id: "update:one", source: "producer",
    time: 1700000000, typ: updateDocument, topic: "documents",
    data: """{"id":"document:one","schemaVersion":"0.10.1"}""")
doAssert forwardedFrames(update) == [
  "documents", "producer", "update:one", "1700000000",
  $updateDocument.ord, update.data
]
echo "SC01 publish-frame timestamp and payload retention checks passed"
