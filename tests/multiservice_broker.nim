## Exercise the real production StarRouter broker with a bounded liveness window.
import std/[asyncdispatch, os]
import ../src/starRouterpkg/server

let arguments = commandLineParams()
doAssert arguments.len == 2
let router = newStarRouter(pubListen = arguments[0], apiListen = arguments[1],
    timeout = 1, maxLives = 1)
waitFor router.run()
