import std/[os, json, asyncdispatch, options]
import zmq
import ../src/starRouterpkg/[client, proto]
import starintel_doc/generated
import starintel_doc/canonical as canonical

let arguments = commandLineParams()
let c = newClient("native", arguments[0], arguments[1], subscriptions = @["documents"])
waitFor c.connect()
waitFor sleepAsync(300)
let value = canonical.parseWireJson(readFile(arguments[2]))
waitFor c.emit(c.newMessage(value, newDocument, "", "documents"))
let fetched = waitFor JsonNode.fetch(c)
doAssert fetched.data == value
let person = %*{"id":"native:person", "dataset":"test", "dtype":"person", "schemaVersion":"0.10.1", "deleted":false, "fname":"Ada"}
waitFor c.emit(c.newMessage(person, newDocument, "", "documents"))
let typed = waitFor Person.fetch(c)
doAssert string(typed.data.id) == "native:person"
doAssert typed.data.schemaVersion == "0.10.1"
doAssert typed.data.deleted.get == false
# A separate topic keeps these additional native publications out of the
# Python subscriber's existing document assertions.
c.subscribe("native-wire")
waitFor sleepAsync(300)
const RawContractText = staticRead("../fixtures/raw-json-unique-keys.json")
let rawContract = parseJson(RawContractText)
doAssert rawContract["contract"].getStr == "starintel.raw-json-unique-keys/1"
var exactCases = 0
for fixture in rawContract["cases"]:
  if not fixture["valid"].getBool: continue
  let raw = fixture["wire"].getStr
  let expected = canonical.stringifyWireJson(canonical.parseWireJson(raw))
  waitFor c.emit(c.newMessage(raw, newDocument, "", "native-wire"))
  let received = waitFor JsonNode.fetch(c)
  doAssert received.typ == newDocument
  doAssert canonical.stringifyWireJson(received.data) == expected, fixture["name"].getStr
  # Re-emitting the JsonNode must preserve numeric tokens rather than quoting,
  # rounding, overflowing, or underflowing them.
  waitFor c.emit(c.newMessage(received.data, updateDocument, "", "native-wire"))
  let roundtrip = waitFor JsonNode.fetch(c)
  doAssert roundtrip.typ == updateDocument
  doAssert canonical.stringifyWireJson(roundtrip.data) == expected, fixture["name"].getStr
  inc exactCases
doAssert exactCases == 9
# Historical event time is retained through the production encoder/broker/client.
let historical = c.newMessage(readFile(arguments[2]), newDocument, "", "native-wire")
historical.time = 1700000000
waitFor c.emit(historical)
let replayed = waitFor c.fetch()
doAssert replayed.time == historical.time
doAssert replayed.data == readFile(arguments[2])
waitFor c.emit(c.newMessage(person, updateDocument, "", "native-wire"))
doAssert (waitFor c.fetch()).typ == updateDocument
# Preserve SC01's existing Target -> recipient/newDocument projection.
let targetRaw = readFile(arguments[3])
waitFor c.emit(c.newMessage(targetRaw, target, "", c.actorName))
let delivery = waitFor c.fetch()
doAssert delivery.typ == newDocument
doAssert delivery.topic == c.id and delivery.data == targetRaw
# Unsupported delete must reach the caller as NACK and leave the socket usable.
var rejectedDelete = false
try:
  waitFor c.emit(c.newMessage(person, deleteDocument, "", "native-wire"))
except IOError:
  rejectedDelete = true
doAssert rejectedDelete
waitFor c.emit(c.newMessage(person, newDocument, "", "native-wire"))
doAssert (waitFor c.fetch()).typ == newDocument
# A real PUB socket feeds malformed frames to the production client decoder.
let fakeAddress = "ipc://" & arguments[2] & ".sock"
let publisher = zmq.listen(fakeAddress, PUB)
let receiver = newClient("frame-probe", fakeAddress, arguments[1], subscriptions = @["probe"])
waitFor receiver.connect()
waitFor sleepAsync(300)
let validFrames = @["probe", "source", "id", "1700000000", "3", readFile(arguments[2])]
for field in [3, 4, 5]:
  var malformed = validFrames
  malformed[field] = if field == 5: "[]" else: "invalid"
  publisher.sendAll(malformed)
  var rejected = false
  try:
    discard waitFor receiver.fetch()
  except ValueError:
    rejected = true
  doAssert rejected
  publisher.sendAll(validFrames)
  let recovered = waitFor receiver.fetch()
  doAssert recovered.time == 1700000000 and recovered.data == validFrames[5]
receiver.close()
publisher.close()
c.close()
echo "native historical timestamp, Target, NACK and multipart recovery PASS"
echo "native JsonNode exact-number receive/re-emit PASS (18 messages)"
echo "native client emit PASS"
