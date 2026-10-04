import std/[os, json, asyncdispatch, options]
import ../src/starRouterpkg/[client, proto]
import starintel_doc/generated

let arguments = commandLineParams()
let c = newClient("native", arguments[0], arguments[1], subscriptions = @["documents"])
waitFor c.connect()
waitFor sleepAsync(300)
let value = parseFile(arguments[2])
waitFor c.emit(c.newMessage(value, newDocument, "", "documents"))
let fetched = waitFor JsonNode.fetch(c)
doAssert fetched.data == value
let person = %*{"id":"native:person", "dataset":"test", "dtype":"person", "schemaVersion":"0.10.1", "deleted":false, "fname":"Ada"}
waitFor c.emit(c.newMessage(person, newDocument, "", "documents"))
let typed = waitFor Person.fetch(c)
doAssert string(typed.data.id) == "native:person"
doAssert typed.data.schemaVersion == "0.10.1"
doAssert typed.data.deleted.get == false
c.close()
echo "native client emit PASS"
