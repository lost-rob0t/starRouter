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


proc bumpActor(router: StarRouter, msg: Message[string]): bool =
  ## Heartbeats may refresh only a service the actor explicitly registered.
  if not router.actors.hasKey(msg.topic): return false
  if not router[msg.topic].actors.hasKey(msg.source): return false
  router[msg.topic][msg.source].lastHeart = unix() + int64(router.timeout)
  router[msg.topic][msg.source].liveness = router.maxLives
  result = true

proc bumpActor(router: StarRouter, id: string): bool =
  ## Document topics are not service names. Search exact registered IDs instead
  ## of splitting at '-', since canonical star:v1 actor names contain hyphens.
  for actorName in router.actors.keys:
    let manager = router[actorName]
    if manager.actors.hasKey(id):
      manager[id].lastHeart = unix() + int64(router.timeout)
      manager[id].liveness = router.maxLives
      result = true

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

proc sendNACK(router: StarRouter, dest: string) =
  router.apiConn.send(dest, SNDMORE)
  router.apiConn.send($EventType.nack.ord)


proc multicast*[T](router: StarRouter, message: T) =
  router.pubConn.send($message)





proc receiveClientMessage*(router: StarRouter, source: string): Future[Message[
    string]] {.async.} =
  var msg = Message[string]()
  msg.source = await router.apiConn.receiveAsync()
  msg.id = await router.apiConn.receiveAsync()
  msg.time = (await router.apiConn.receiveAsync()).parseInt()
  let typ = await router.apiConn.receiveAsync()
  msg.typ = EventType(typ.parseInt())
  msg.topic = await router.apiConn.receiveAsync()
  msg.data = await router.apiConn.receiveAsync()
  return msg

proc publishClientMessage*(router: StarRouter, message: Message[string]) =
  validatePayload(message.data, message.typ)
  router.pubConn.send(message.topic, SNDMORE)
  router.pubConn.send(message.source, SNDMORE)
  router.pubConn.send(message.id, SNDMORE)
  router.pubConn.send($unix(), SNDMORE)
  router.pubConn.send($message.typ.ord, SNDMORE)
  router.pubConn.send(message.data)
  when defined(debug):
    echo message

proc sendHeartbeat(router: StarRouter) =
  let msg = Message[string](source: router.id, id: ulid(), data: "",
      typ: EventType.heartBeat, topic: "broker")
  router.publishClientMessage(msg)
  echo "sent hearts"
  echo msg

# TODO send error msg incase of broker error
proc registerActor(router: StarRouter, msg: Message[string]) =
  var actor = router.newActor(msg.source)
  if not router.actors.haskey(msg.topic):
    router.actors[msg.topic] = ActorManager()
  router.actors[msg.topic][msg.source] = actor

proc handleTarget(router: StarRouter, msg: Message[string]): bool =
  ## Legacy target projection: no advertised recipient means no delivery.
  if not router.actors.hasKey(msg.topic): return false
  if router[msg.topic].len == 0: return false
  var routed = msg
  let actor = router.nextActor(msg.topic)
  routed.topic = actor.id
  routed.typ = newDocument
  router.publishClientMessage(routed)
  result = true

proc handleMessage*(router: StarRouter) {.async.} =
  let source = await router.apiConn.receiveAsync()
  let empty = await router.apiConn.receiveAsync()
  doAssert empty.len == 0
  let header = (await router.apiConn.receiveAsync())
  case header:
    of "SC01":
      let msg = await router.receiveClientMessage(source)
      when defined(debug):
        echo msg
      try:
        validatePayload(msg.data, msg.typ)
      except ValueError:
        router.sendNACK(source)
        return
      try:
        case msg.typ:
          of newDocument, updateDocument:
            if not router.bumpActor(msg.source):
              router.sendNACK(source)
              return
            router.publishClientMessage(msg)
          of EventType.register:
            router.registerActor(msg)
          of heartbeat:
            if not router.bumpActor(msg):
              router.sendNACK(source)
              return
          of target:
            if not router.handleTarget(msg):
              router.sendNACK(source)
              return
          else:
            # Unimplemented legacy events have no durable/result semantics.
            router.sendNACK(source)
            return
      except KeyError:
        router.sendNACK(source)
        return
      router.sendOK(source)
    of "SR01":
      discard
      # TODO work on broker to broker messaging



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
