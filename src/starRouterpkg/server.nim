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


proc sendOK*(router: StarRouter)  =
  router.apiConn.send($EventType.ack.ord)


proc multicast*[T](router: StarRouter, message: T) =
  router.pubConn.send($message)

proc heartbeat(router: StarRouter) =
     router.pubConn.send($heartbeat.ord)
proc run*(router: StarRouter) {.async.} =
  router.connect()
  var poller: ZPoller
  poller.register(router.apiConn, ZMQ_POLLIN)
  # TODO Last Value Cache.
  while true:
    let res = poll(poller, 500)
    var
      messageType: int
      clientID: string
      message: string

    if res > 0:
      if events(poller[0]):
        let buf = router.apiConn.receiveAll(NOFLAGS)
        messageType = buf[0].parseInt
        clientID = buf[1]
        message = buf[2]
        router.sendOK()
        when defined(debug):
          echo messageType
          echo clientID
          echo message
        case messageType:
          of heartbeat.ord:
            router.heartbeat()
          of newDocument.ord:
            router.multicast(message)
          of updateDocument.ord:
            router.multicast(message)
          of deleteDocument.ord:
            router.multicast(message)
          else:
            router.multicast(message)
when isMainModule:
  var router = newStarRouter()
  echo "Starting StarRouter"
  waitFor router.run()
