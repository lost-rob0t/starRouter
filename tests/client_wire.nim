import std/[os, json, asyncdispatch, options]
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
c.close()
echo "native JsonNode exact-number receive/re-emit PASS (18 messages)"
echo "native client emit PASS"
