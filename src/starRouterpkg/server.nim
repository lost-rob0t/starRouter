## Standalone socket projection over the same pure broker core used by embedding.
import zmq, asyncdispatch, proto, wire, strformat
import routercore
export routercore

type StarRouter* = ref object of RouterCore
  apiConn: ZConnection
  pubConn: ZConnection

proc newStarRouter*(pubListen: string = "tcp://127.0.0.1:6000",
                    apiListen: string = "tcp://*:6001", timeout: int = 10,
                    maxLives: int = 5): StarRouter =
  result = StarRouter()
  result.initializeRouterCore(pubListen, apiListen, timeout, maxLives)

proc connect(router: StarRouter) =
  router.apiConn = listen(router.apiListen, ROUTER)
  router.pubConn = listen(router.pubListen, PUB)



proc sendOK*(router: StarRouter, dest: string) =
  when defined(debug):
    echo fmt"Sending ok to: {dest}"
  router.apiConn.send(dest, SNDMORE)
  router.apiConn.send($EventType.ack.ord)


proc sendNack*(router: StarRouter, dest: string) =
  router.apiConn.send(dest, SNDMORE)
  router.apiConn.send($EventType.nack.ord)



proc multicast*[T](router: StarRouter, message: T) =
  router.pubConn.send($message)






proc receiveMultipart*(connection: ZConnection): Future[seq[string]] {.async.} =
  ## Drain the entire atomic ZeroMQ message before parsing or rejecting it.
  result.add(await connection.receiveAsync())
  while getsockopt[cint](connection, RCVMORE) != 0:
    result.add(await connection.receiveAsync())


proc publishClientMessage*(router: StarRouter, message: Message[string]) =
  validatePayload(message.data, message.typ)
  let frames = forwardedFrames(message)
  for index, frame in frames:
    if index < frames.high:
      router.pubConn.send(frame, SNDMORE)
    else:
      router.pubConn.send(frame)
  when defined(debug):
    echo message


proc sendHeartbeat(router: StarRouter) =
  router.publishClientMessage(router.routerHeartbeat())

# TODO send error msg incase of broker error

proc handleMessage*(router: StarRouter) {.async.} =
  let frames = await receiveMultipart(router.apiConn)
  let source = frames[0]
  try:
    let msg = router.prepareClientMessage(frames)
    let publication = router.applyClientMessage(msg, source)
    if publication != nil:
      router.publishClientMessage(publication)
    router.sendOK(source)
  except KeyError, ValueError:
    router.sendNack(source)


proc run*(router: StarRouter) {.async.} =
  router.connect()
  var poller: ZPoller
  poller.register(router.apiConn, ZMQ_POLLIN)
  # TODO Last Value Cache.
  while true:
    let res = poll(poller, router.timeout * 1000)
    if res > 0 and events(poller[0]):
      try:
        await router.handleMessage()
      except Exception as e:
        echo e.getStackTrace()
        echo getCurrentExceptionMsg()
    else:
      router.sendHeartbeat()
    router.maintainActors()

when isMainModule:
  var router = newStarRouter()
  echo "Starting StarRouter"
  waitFor router.run()
