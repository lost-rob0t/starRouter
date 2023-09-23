import zmq
import asyncdispatch
import tables
import sequtils
import proto
import deques
import ulid
import times
import strformat
import json
import utils
when defined(useStarIntel):
  import starintel_doc except Message
type
  Broker = ref object

  Inbox*[T] = ref object
    ## New Documents inbox
    ## callback will be called when documents are added to the inbox
    ## filter proc is a predicate that can be used to filter out un-related doucments
    ## All inboxes will need to use Message[type]!
    documents*: Deque[Message[T]]
    callback*: proc (doc: Message[T]): Future[void] {.async.}
    filter*: proc (doc: Message[T]): bool
    size*: int
  Client* = ref object
    ## Main Actor Client
    ## Job: Active Jobs that need to be executed, implemented with a Pritority Queue
    ## Actor Name
    actorName*: string
    ## Unique Id for the actor
    ## Format: actorName-ulid
    id*: string
    ## Topics the actor is subscripted to.
    subscriptions*: seq[string]
    ## Services: Is a RPC/task that an Actor can perform
    subsocket: ZConnection
    apiSocket: ZConnection
    ## Connection string
    address*: string
    apiAddress*: string
    ## Timeout of messags or server respones to consider an error
    timeout*: int
    heartExpires*: int64

proc newInbox*[T](typ: typedesc[T], n: int): Inbox[T] =
  Inbox[typ](documents: initDeque[Message[typ]](n))


proc registerCB*[T](inbox: Inbox[T], callback: proc(doc: Message[T]): Future[void]) =
  ## Add a Callback to the inbox
  # TODO multiple callbacks?
  inbox.callback = callback


proc registerFilter*[T](inbox: Inbox[T], filter: proc(doc: Message[T]): bool) =
  inbox.filter = filter



func isFull*[T](inbox: Inbox[T]): bool = inbox.size < len(inbox.documents)

func isEmpty*[T](inbox: Inbox[T]): bool = len(inbox.documents) == 0

func pop*[T](inbox: Inbox[T]): Message[T] = inbox.documents.popLast

func push*[T](inbox: Inbox[T], item: Message[T]) = inbox.documents.addFirst(item)


proc newMessage*[T](client: Client, data: T, eventType: EventType, source,
    topic: string): Message[T] =
  ## Create a new message using the source as the current client id.
  let time = now().toTime().toUnix()
  result = Message[typeOf(data)](data: data, source: client.id, id: ulid(),
      topic: topic, time: time)


# TODO Fix this, make it reliable
proc emit*[T](c: Client, data: T, tries: int = 3) {.async.} =
  var
    state = false
    i = 0
  # nim bindings sends the identity for us?
  await c.apiSocket.sendAsync("", SNDMORE)
  await c.apiSocket.sendAsync("SC01", SNDMORE)
  await c.apiSocket.sendAsync(c.id, SNDMORE)
  await c.apiSocket.sendAsync(data.id, SNDMORE)
  await c.apiSocket.sendAsync($data.time, SNDMORE)
  await c.apiSocket.sendAsync($data.typ, SNDMORE)
  await c.apiSocket.sendAsync(data.topic, SNDMORE)
  await c.apiSocket.sendAsync($(%*data.data))
  let resp = await c.apiSocket.receiveAsync()
  #while not state and i < tries:
  #  client.apiSocket.send($eventType.ord, SNDMORE)
  #  client.apiSocket.send($data)
  #  let resp = await client.apiSocket.receiveAsync()
  #  if resp == "ACK":
  #    state = true
  #    break
  #  inc(i)
  #  if not state:
  #    raise newException(IOError, "Server Failed to reply")

# TODO Support Multipart
proc fetch*[T](typ: typedesc[T] = T, client: Client): Future[Message[T]] {.async.} =
  ## Fetch data from subscriptions
  var msg = Message[typ]()
  try:
    msg.topic = await client.subSocket.receiveAsync()
    msg.source = await client.subSocket.receiveAsync()
    msg.id = await client.subSocket.receiveAsync()
    let time = (await client.subSocket.receiveAsync()).parseInt()
    if time.isOld(client.timeout): raise newException(SlowMessageDefect,
        fmt"MSG age older then the current timeout of {client.timeout}. DO NOT EXCEPT THIS.")
    msg.time = time
    let etyp = (await client.subSocket.receiveAsync()).parseInt()
    msg.typ = EventType(etyp)
    # TODO protobuffs man
    msg.data = (await client.subSocket.receiveAsync()).parseJson().to(typ)
    result = msg
  except KeyError:
    result = msg
    discard # wrong msg typ




proc newClient*(actorName: string, address: string, apiAddress: string,
    timeout: int = 10, subscriptions: seq[string]): Client =
  let id = ulid()
  result = Client(actorName: actorName, address: address,
      subscriptions: subscriptions, apiAddress: apiAddress,
      id: fmt"{actorName}-{id}", timeout: timeout, heartExpires: 0)


proc subscribe*(client: Client, topic: string) =
  client.subscriptions.add(topic)
  client.subsocket.setsockopt(SUBSCRIBE, topic)


proc unsubscribe*(client: Client, topic: string) =
  let i = client.subscriptions.find(topic)
  client.subscriptions.delete(i)
  client.subsocket.setsockopt(UNSUBSCRIBE, topic)


proc register*(client: Client) {.async.} =
  var msg = Message[string]()
  msg.topic = client.actorName
  msg.source = client.id
  msg.typ = EventType.register
  msg.data = ""
  await client.emit(msg)



proc connect*(client: Client) {.async.} =
  ## Connect The Client to the message broker
  ## it will register, and subscribe to topics.
  client.subsocket = zmq.connect(client.address, SUB)
  client.apiSocket = zmq.connect(client.apiAddress, DEALER)
  client.subsocket.setsockopt(SUBSCRIBE, "broker")
  client.subsocket.setsockopt(SUBSCRIBE, client.id)
  await client.register()
  for topic in client.subscriptions:
    client.subsocket.setsockopt(SUBSCRIBE, topic)


proc close*(client: Client) =
  client.subsocket.close()
  client.apisocket.close()


proc sendHeartbeat*(client: Client) {.async.} =
  ## Send a heartbeat to the broker.
  ## You Should call this if you use withInbox and your loop takes forever
  when defined(debug):
    echo "checking if its time to send love."
    echo fmt"now: {unix()}"
    echo fmt"love time: {client.heartExpires}"
  if unix() > client.heartExpires:
    when defined(debug):
      echo "It is love time!"
    let msg = Message[string](source: client.id, id: ulid(), data: "{}",
        typ: EventType.heartBeat, topic: client.actorName)
    await client.emit(msg)
    client.heartExpires = unix() + client.timeout



proc runInbox*[T](typ: typedesc[T], client: Client, inbox: Inbox[T]) {.async.} =
  var poller: ZPoller
  poller.register(client.subsocket, ZMQ_POLLIN)
  var message: Message[typ]
  while true:
    let res = poll(poller, client.timeout)
    if res > 0:
      if events(poller[0]):
        message = await typ.fetch(client)

        when defined(debug):
          echo message
        if inbox.filter(message):
          inbox.push(message)
      else:
        await client.sendHeartbeat()

    while not inbox.isEmpty:
      message = inbox.pop
      await inbox.callback(message)

    # sanity incase of real long queue
    await client.sendHeartbeat()


template withInbox*[T](typ: typedesc[T], client: Client, inbox: Inbox[T],
    body: untyped): untyped =
  var poller: ZPoller
  poller.register(client.subsocket, ZMQ_POLLIN)
  var message: Message[typ]
  while true:
    let res = poll(poller, 500)
    if res > 0:
      if events(poller[0]):
        when defined(debug):
          echo "Got message!"
        message = await typ.fetch(client)
        if inbox.filter(message):
          await inbox.callback(message)
    await client.sendHeartbeat()
    body
when isMainModule:
  const address = "tcp://localhost:6000"
  const api = "tcp://localhost:6001"
  var client = newClient("test", address, api, 10, @["test"])
  echo client.id
