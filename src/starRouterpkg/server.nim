import zmq
import asyncdispatch
import proto
import times
import tables
import strutils
import utils
import strformat
import ulid
import json
import wire


type
  Actor = ref object
    id: string
    transport: string
    liveness: int
    lastHeart: int64
  ActorManager = ref object
    # actor.id: Actor
    actors: Table[string, Actor]
    # Last used index of actors.keys[lastUsed += 1]
    # Simple round robin, although maybe a weighted solution might be better
    lastUsed: int
  StarRouter* = ref object
    #TODO this should be whatever zmq type there is for a client
    ## Address: Connection string to listen on. This should include the port
    apiListen*: string
    pubListen*: string
    ## timeout: Message timeout, if a message is being sent very slowly, kill the server and restart.
    timeout*: int
    maxLives*: int
    apiConn: ZConnection
    pubConn: ZConnection
    actors: Table[string, ActorManager]
    id: string
  MessageCache* = ref object
    ## Object that represents a cache to store messages
    ## Last value Cache
    ## Key is topic, value is message
    lvc*: Table[string, string]
    messages*: seq[string]
  DispatchAction* = enum
    relayDocument, registerClient, heartbeatClient, routeTarget, rejectEvent

func dispatchAction*(event: EventType): DispatchAction =
  ## SC01 is a single-action command; unhandled commands must never be ACKed.
  case event
  of newDocument, updateDocument: relayDocument
  of EventType.register: registerClient
  of heartbeat: heartbeatClient
  of target: routeTarget
  else: rejectEvent

proc routedTarget*(msg: Message[string], recipient: string): Message[string] =
  ## SC01 legacy Target delivery is projected as newDocument to its recipient.
  ## Copy the envelope so routing never mutates the caller's message.
  Message[string](source: msg.source, id: msg.id, time: msg.time,
      typ: newDocument, topic: recipient, data: msg.data)

proc `==`(x, y: Actor): bool = result = x.id == y.id

proc newActor*(router: StarRouter, id: string): Actor =
  result = Actor(id: id)
  result.liveness = router.maxLives
  # Assume it is fine for now, wait until next beat time
  result.lastHeart = unix() + router.timeout


proc `[]`(router: StarRouter, actorName: string): ActorManager =
  result = router.actors[actorname]


proc `[]`(manager: ActorManager, id: string): Actor =
  result = manager.actors[id]


proc `[]=`(manager: ActorManager, key: string, val: Actor) =
  manager.actors[key] = val



proc delete(manager: ActorManager, id: string) =
  manager.actors.del(id)

proc values(manager: ActorManager): seq[Actor] =
  for key in manager.actors.keys:
    result.add manager.actors[key]

proc len(manager: ActorManager): int =
  result = manager.actors.len

proc nextActor(manager: ActorManager): Actor =
  var nextValue = manager.lastUsed + 1
  let vals = manager.values()
  if nextValue > vals.high:
    nextValue = 0
  result = vals[nextValue]
  manager.lastUsed = nextValue
proc nextActor(router: StarRouter, actorName: string): Actor =
  result = router.actors[actorName].nextActor()


proc ownsActor(router: StarRouter, id, transport: string): bool =
  for manager in router.actors.values:
    if manager.actors.hasKey(id):
      return manager[id].transport == transport

proc bumpActor(router: StarRouter, msg: Message[string]) =
  let actorName = msg.topic
  router[actorName][msg.source].lastHeart = unix() + int64(router.timeout)
  router[actorName][msg.source].liveness = router.maxLives

proc bumpActor(router: StarRouter, id: string) =
  ## Identity may contain hyphens; never recover an actor name by splitting it.
  for actorName in router.actors.keys:
    if router[actorName].actors.hasKey(id):
      router[actorName][id].lastHeart = unix() + router.timeout
      router[actorName][id].liveness = router.maxLives
      return

proc hurtActors(router: StarRouter) =
  # Called at end of msg checking loop, if client didnt send heart, assume something bad, and minus a life
  for actorName in router.actors.keys:
    for actor in router[actorName].values():
      let age = unix() - actor.lastHeart
      if age > router.timeout:
        actor.liveness -= 1
        when defined(debug):
          echo fmt"Hurt: {actor.id}"
          echo fmt"Liveness: {actor.liveness}"

proc removeDeadActors(router: StarRouter) =
  # remove actors with 0 lives, they are likly dead
    for actorName in router.actors.keys:
      var actors = router[actorName].values()
      for x in 0..actors.high():
        if actors[x].liveness <= 0:
          let id = actors[x].id
          router[actorName].delete(id)
          when defined(debug):
            echo fmt"Removing: {id}"


proc newStarRouter*(pubListen: string = "tcp://127.0.0.1:6000",
    apiListen: string = "tcp://*:6001", timeout: int = 10,
    maxLives: int = 5): StarRouter =
  result = StarRouter(pubListen: pubListen, apiListen: apiListen,
      timeout: timeout, id: fmt"router-{ulid()}", maxLives: maxLives)



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

proc decodeClientMessage(frames: seq[string]): Message[string] =
  if frames.len != 9 or frames[1] != "" or frames[2] != "SC01":
    raise newException(ValueError, "Invalid SC01 frame envelope")
  let event = frames[6].parseInt()
  if event < ord(low(EventType)) or event > ord(high(EventType)):
    raise newException(ValueError, "Invalid SC01 event")
  if frames[3].len == 0 or frames[4].len == 0 or frames[7].len == 0:
    raise newException(ValueError, "Missing SC01 identity, message ID or topic")
  result = Message[string](source: frames[3], id: frames[4],
      time: frames[5].parseBiggestInt(), typ: EventType(event),
      topic: frames[7], data: frames[8])

func forwardedFrames*(message: Message[string]): array[6, string] =
  ## Preserve the originating timestamp and opaque payload across the PUB handoff.
  [message.topic, message.source, message.id, $message.time,
      $message.typ.ord, message.data]

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
  let msg = Message[string](source: router.id, id: ulid(), data: "",
      time: unix(), typ: EventType.heartBeat, topic: "broker")
  router.publishClientMessage(msg)
  echo "sent hearts"
  echo msg

# TODO send error msg incase of broker error
proc registerActor(router: StarRouter, msg: Message[string], transport: string) =
  # Connection binding prevents another DEALER claiming an active actor ID.
  # ROUTER identities are not authenticated principals.
  for manager in router.actors.values:
    if manager.actors.hasKey(msg.source) and manager[msg.source].transport != transport:
      raise newException(ValueError, "Actor belongs to another transport")
  var actor = router.newActor(msg.source)
  actor.transport = transport
  if not router.actors.haskey(msg.topic):
    router.actors[msg.topic] = ActorManager()
  router.actors[msg.topic][msg.source] = actor

# TODO send error msg incase of broker error
proc handletarget(router: StarRouter, msg: Message[string]) =
  if not router.actors.hasKey(msg.topic) or router[msg.topic].actors.len == 0:
    raise newException(KeyError, "No registered recipient for target")
  let actor = router.nextActor(msg.topic)
  router.publishClientMessage(routedTarget(msg, actor.id))

proc handleMessage*(router: StarRouter) {.async.} =
  let frames = await receiveMultipart(router.apiConn)
  let source = frames[0]
  try:
    let msg = decodeClientMessage(frames)
    validatePayload(msg.data, msg.typ)
    let action = dispatchAction(msg.typ)
    if action != registerClient and not router.ownsActor(msg.source, source):
      raise newException(ValueError, "Unregistered actor or mismatched transport")
    case action:
    of relayDocument:
      router.bumpActor(msg.source)
      router.publishClientMessage(msg)
    of registerClient:
      router.registerActor(msg, source)
    of heartbeatClient:
      router.bumpActor(msg)
    of routeTarget:
      router.handleTarget(msg)
    of rejectEvent:
      raise newException(ValueError, "Unsupported SC01 event")
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
    router.hurtActors()
    router.removeDeadActors()
when isMainModule:
  var router = newStarRouter()
  echo "Starting StarRouter"
  waitFor router.run()
