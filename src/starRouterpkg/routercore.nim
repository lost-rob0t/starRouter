import proto, times, tables, strutils, utils, strformat, ulid, wire

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
  RouterCore* = ref object of RootObj
    #TODO this should be whatever zmq type there is for a client
    ## Address: Connection string to listen on. This should include the port
    apiListen*: string
    pubListen*: string
    ## timeout: Message timeout, if a message is being sent very slowly, kill the server and restart.
    timeout*: int
    maxLives*: int
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


proc newActor*(router: RouterCore, id: string): Actor =
  result = Actor(id: id)
  result.liveness = router.maxLives
  # Assume it is fine for now, wait until next beat time
  result.lastHeart = unix() + router.timeout



proc `[]`(router: RouterCore, actorName: string): ActorManager =
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

proc nextActor(router: RouterCore, actorName: string): Actor =
  result = router.actors[actorName].nextActor()



proc ownsActor(router: RouterCore, id, transport: string): bool =
  for manager in router.actors.values:
    if manager.actors.hasKey(id):
      return manager[id].transport == transport


proc registeredActor*(router: RouterCore, id, transport: string): bool =
  router.ownsActor(id, transport)


proc actorCount*(router: RouterCore): int =
  for manager in router.actors.values: result += manager.actors.len


proc bumpActor(router: RouterCore, msg: Message[string]) =
  let actorName = msg.topic
  router[actorName][msg.source].lastHeart = unix() + int64(router.timeout)
  router[actorName][msg.source].liveness = router.maxLives


proc bumpActor(router: RouterCore, id: string) =
  ## Identity may contain hyphens; never recover an actor name by splitting it.
  for actorName in router.actors.keys:
    if router[actorName].actors.hasKey(id):
      router[actorName][id].lastHeart = unix() + router.timeout
      router[actorName][id].liveness = router.maxLives
      return


proc hurtActors(router: RouterCore) =
  # Called at end of msg checking loop, if client didnt send heart, assume something bad, and minus a life
  for actorName in router.actors.keys:
    for actor in router[actorName].values():
      let age = unix() - actor.lastHeart
      if age > router.timeout:
        actor.liveness -= 1
        when defined(debug):
          echo fmt"Hurt: {actor.id}"
          echo fmt"Liveness: {actor.liveness}"


proc removeDeadActors(router: RouterCore) =
  # remove actors with 0 lives, they are likly dead
    for actorName in router.actors.keys:
      var actors = router[actorName].values()
      for x in 0..actors.high():
        if actors[x].liveness <= 0:
          let id = actors[x].id
          router[actorName].delete(id)
          when defined(debug):
            echo fmt"Removing: {id}"



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


proc routerHeartbeat*(router: RouterCore): Message[string] =
  Message[string](source: router.id, id: ulid(), data: "",
      time: unix(), typ: EventType.heartBeat, topic: "broker")


proc registerActor(router: RouterCore, msg: Message[string], transport: string) =
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

proc prepareClientMessage*(router: RouterCore, frames: seq[string]): Message[string] =
  ## Shared SC01 admission: no registration, publication or acknowledgment effects.
  result = decodeClientMessage(frames)
  validatePayload(result.data, result.typ)
  let action = dispatchAction(result.typ)
  if action == rejectEvent:
    raise newException(ValueError, "Unsupported SC01 event")
  if action != registerClient and not router.ownsActor(result.source, frames[0]):
    raise newException(ValueError, "Unregistered actor or mismatched transport")


proc applyClientMessage*(router: RouterCore, msg: Message[string],
                         transport: string): Message[string] =
  ## Commit only after the embedding host's authorization/persistence decision.
  ## The standalone CLI retains its historical transport-receipt behavior.
  case dispatchAction(msg.typ)
  of relayDocument:
    router.bumpActor(msg.source)
    result = msg
  of registerClient:
    router.registerActor(msg, transport)
  of heartbeatClient:
    router.bumpActor(msg)
  of routeTarget:
    if not router.actors.hasKey(msg.topic) or router[msg.topic].actors.len == 0:
      raise newException(KeyError, "No registered recipient for target")
    result = routedTarget(msg, router.nextActor(msg.topic).id)
  of rejectEvent:
    raise newException(ValueError, "Unsupported SC01 event")


proc routeEmbeddedTarget*(router: RouterCore, actor, id, body: string): Message[string] =
  ## Trusted host entry: host owns authorization, leases and idempotency.
  validatePayload(body, target)
  if not router.actors.hasKey(actor) or router[actor].actors.len == 0:
    raise newException(KeyError, "No registered recipient for target")
  let msg = Message[string](source: router.id, id: id, time: unix(),
                            typ: target, topic: actor, data: body)
  result = routedTarget(msg, router.nextActor(actor).id)


proc maintainActors*(router: RouterCore) =
  router.hurtActors()
  router.removeDeadActors()


proc initializeRouterCore*(router: RouterCore, pubListen, apiListen: string,
                           timeout, maxLives: int) =
  if timeout <= 0: raise newException(ValueError, "router timeout must be positive")
  if maxLives <= 0: raise newException(ValueError, "router maxLives must be positive")
  router.pubListen = pubListen
  router.apiListen = apiListen
  router.timeout = timeout
  router.maxLives = maxLives
  router.id = fmt"router-{ulid()}"

proc newRouterCore*(pubListen: string = "tcp://127.0.0.1:6000",
                    apiListen: string = "tcp://*:6001", timeout: int = 10,
                    maxLives: int = 5): RouterCore =
  result = RouterCore()
  result.initializeRouterCore(pubListen, apiListen, timeout, maxLives)
