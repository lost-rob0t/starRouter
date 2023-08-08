import jsony
import zmq
import asyncdispatch
import proto
import times
import tables
import redpool,mycouch
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
    apiConn: ZConnection
    pubConn: ZConnection
    #dataLayer: DataStore
  #ApiServer* = object
  #  # service:ActorID
  #  actors*: Table[string, string]
  #  da



proc newStarRouter(pubListen: string = "tcp://127.0.0.1:6000", apiListen: string = "tcp://*:6001"): StarRouter =
    result = StarRouter(pubListen: pubListen, apiListen: apiListen)

proc connect(router: StarRouter)  =
  router.apiConn = listen(router.apiListen, REP)
  router.pubConn = listen(router.pubListen, PUB)

proc multicast(router: StarRouter, msg: string) {.async.} =
  discard router.pubConn.sendAsync(msg)
  when defined(debug):
    echo msg

proc run*(router: StarRouter) {.async.} =
  router.connect()
  while true:
    let data = await router.apiConn.receiveAsync()
    await router.apiConn.sendAsync("ACK")
    await router.pubConn.sendAsync(data)

when isMainModule:
  var router = newStarRouter()
  echo "Starting StarRouter"
  waitFor router.run()
