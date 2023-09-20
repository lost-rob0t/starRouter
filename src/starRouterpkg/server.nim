import zmq
import asyncdispatch
import proto
import times
import tables
import strutils
import utils
import strformat
type
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
     router.pubConn.send($heartbeat)



proc receiveClientMessage*(router: StarRouter): Future[Message[string]] {.async.} =
  var msg = Message[string]()
  msg.source = await router.apiConn.receiveAsync()
  msg.id = await router.apiConn.receiveAsync()
  msg.time = (await router.apiConn.receiveAsync()).parseInt()
  let typ  = await router.apiConn.receiveAsync()
  msg.typ = EventType(typ.parseInt())
  msg.topic = await router.apiConn.receiveAsync()
  msg.data = await router.apiConn.receiveAsync()
  router.sendOk()
  return msg

proc publishClientMessage*(router: StarRouter, message: Message[string]) =
  router.pubConn.send(message.topic, SNDMORE)
  router.pubConn.send(message.source, SNDMORE)
  router.pubConn.send(message.id, SNDMORE)
  router.pubConn.send($unix(), SNDMORE)
  router.pubConn.send($message.typ.ord, SNDMORE)
  router.pubConn.send(message.data)


proc echo(s: Message[string]) =
  echo fmt"FROM: {s.source}"
  echo fmt"TOPIC: {s.topic}"
  echo fmt"EVENT: {$s.typ.ord}"
  echo fmt"data: {s.data}"
proc handleMessage*(router: StarRouter) {.async.}  =
  let header = (await router.apiConn.receiveAsync())
  case header:
    of "SC01":
      let msg = await router.receiveClientMessage()
      when defined(debug):
        echo msg
      case msg.typ:
        of newDocument:
          router.publishClientMessage(msg)
        else:
          echo "No run!"
          discard # not implemented
    of "SR01":
      discard
      # TODO work on broker to broker messaging



proc run*(router: StarRouter) {.async.} =
  router.connect()
  var poller: ZPoller
  poller.register(router.apiConn, ZMQ_POLLIN)
  # TODO Last Value Cache.
  while true:
    let res = poll(poller, 10_000)
    if res > 0:
      if events(poller[0]):
        try:
          await router.handleMessage()
        except Exception as e:
          echo e.getStackTrace()
        # case messageType:
        #   of heartbeat.ord:
        #     router.heartbeat()
        #   of newDocument.ord:
        #     router.multicast(message)
        #   of updateDocument.ord:
        #     router.multicast(message)
        #   of deleteDocument.ord:
        #     router.multicast(message)
        #   else:
        #     router.multicast(message)
when isMainModule:
  var router = newStarRouter()
  echo "Starting StarRouter"
  waitFor router.run()
