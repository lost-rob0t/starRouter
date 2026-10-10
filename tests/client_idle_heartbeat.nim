## Reproduces loss of heartbeats when a string inbox receives no traffic.
import std/[asyncdispatch, os]
import ../src/starRouterpkg/client

let arguments = commandLineParams()
doAssert arguments.len == 2
let client = newClient("idle-actor", arguments[0], arguments[1], timeout=1,
    subscriptions = @[])
waitFor client.connect()
waitFor client.runStringInbox(newStringInbox())
