import jsony
import zmq
import asyncdispatch
import proto
import times
import tables
import redpool,mycouch, strutils
type
  DataStore* = object
    db*: AsyncCouchDBClient
    cache*: RedisPool
  StarRouter* = ref object
    #TODO this should be whatever zmq type there is for a client
    ## Address: Connection string to listen on. This should include the port
    apiListen*: string
    pubListen*: string
    ## timeout: Message timeout, if a message is being sent very slowly, kill the server and restart.
    timeout*: int
    aliveClients*: Table[string, int64]
    apiConn: ZConnection
    pubConn: ZConnection
  MessageCache* = ref object
    ## Object that represents a cache to store messages
    ## Last value Cache
    ## Key is topic, value is message
    lvc*: Table[string, string]

    messages*: seq[string]


proc newStarRouter*(pubListen: string = "tcp://127.0.0.1:6000", apiListen: string = "tcp://*:6001"): StarRouter =
    result = StarRouter(pubListen: pubListen, apiListen: apiListen)

proc connect(router: StarRouter)  =
  router.apiConn = listen(router.apiListen, REP)
  router.pubConn = listen(router.pubListen, PUB)


proc sendOK*(router: StarRouter) {.async.} =
  await router.apiConn.sendAsync("ACK")

proc multicast*[T](router: StarRouter, message: T) {.async.} =
  await router.pubConn.sendAsync($message)

proc heartbeat(router: StarRouter) {.async.} =
     await router.pubConn.sendAsync($heartbeat.ord)
proc run*(router: StarRouter) {.async.} =
  router.connect()
  # Last Value Cache.
  while true:
    # Get the type of message
    var messageType = await router.apiConn.receiveAsync()
    let clientID = await router.apiConn.receiveAsync()
    let message = await router.apiConn.receiveAsync()
    await router.sendOK()
    case messageType.parseInt:
      of heartbeat.ord:
        await router.heartbeat()
      of newDocument.ord:
        await router.multicast(message)
      of updateDocument.ord:
        await router.multicast(message)
      of deleteDocument.ord:
        await router.multicast(message)
      else:
        # TODO Implement MDP
        discard
when isMainModule:
  var router = newStarRouter()
  echo "Starting StarRouter"
  waitFor router.run()
