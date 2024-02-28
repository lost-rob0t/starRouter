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
  result.liveness = 5
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


proc bumpActor(router: StarRouter, msg: Message[string]) =
  let actorName = msg.topic
  router[actorName][msg.source].lastHeart = unix() + int64(router.timeout)
  router[actorName][msg.source].liveness = router.maxLives

proc bumpActor(router: StarRouter, id: string) =
  let actorname = id.split("-")[0]
  router[actorName][id].lastHeart = unix() + router.timeout

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

# TODO send error msg incase of broker error
proc handletarget(router: StarRouter, msg: Message[string]) =
  var newMsg = msg
  let actor = router.nextActor(msg.topic)
  newMsg.topic = actor.id
  newMsg.typ = newDocument
  router.publishClientMessage(msg)

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
        case msg.typ:
          of newDocument:
            router.bumpActor(msg.source)
            router.publishClientMessage(msg)
          of EventType.register:
            router.registerActor(msg)
            when defined(debug):
              echo "Total actorsNames: ", $len(router.actors)
          of heartbeat:
            router.bumpActor(msg)
            router.sendOK(source)
          of target:
            router.handleTarget(msg)
          else:
            when defined(debug):
              echo "Invalid Command."
            discard # not implemented
      except KeyError:
        # HACK Why doesnt the topic exist?
        # The new api should allow you to create them, ensuring they exist from the start
        router.registeractor(msg)

      finally:
        router.sendOK(source)

      case msg.typ:
        of newDocument:
          router.bumpActor(msg.source)
          router.publishClientMessage(msg)
          router.sendOK(source)
        of EventType.register:
          router.registerActor(msg)
          router.sendOK(source)
          when defined(debug):
            echo "Total actorsNames: ", $len(router.actors)
        of heartbeat:
          router.bumpActor(msg)
          router.sendOK(source)
        of target:
          router.handleTarget(msg)
          router.sendOK(source)
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
