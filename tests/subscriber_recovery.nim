## Regression: malformed multi-part PUB/SUB records must not desynchronize fetch.
import std/[asyncdispatch, os]
import ../src/starRouterpkg/[client, proto]

let args = commandLineParams()
doAssert args.len == 2
let actorClient = newClient("subscriber-probe", args[0], args[1],
    timeout = 10, subscriptions = @["fixture"])
waitFor actorClient.connect()

for index in 0..<4:
  try:
    discard waitFor actorClient.fetch()
    quit("invalid publication was accepted: " & $index, 1)
  except ValueError:
    discard

let good = waitFor actorClient.fetch()
doAssert good.topic == "fixture"
doAssert good.source == "publisher"
doAssert good.id == "healthy-message"
doAssert good.typ == EventType.register
doAssert good.data == ""
actorClient.close()
echo "native PUB/SUB malformed frame recovery PASS"
