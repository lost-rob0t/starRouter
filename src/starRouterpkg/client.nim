import zmq
import asyncdispatch
import tables
import sequtils
import proto
import deques
import ulid
import times
import strformat
import jsony
import utils
type
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

# TODO Move to util
# proc withTimeoutEx[T](fut: Future[T], timeout: int = 5000): Future[T] {.async.} =
#   let res = await fut.withTimeout(timeout)
#   if res:
#     return fut.read()
#   else:
#     raise newException(IOError, "Request timeout")



# TODO Fix this, make it reliable
proc emit*[T](c: Client, data: T, tries: int = 3) {.async.} =
  var
    state = false
    i = 0
  c.apiSocket.send("SC01", SNDMORE)
  c.apiSocket.send(c.id, SNDMORE)
  c.apiSocket.send(data.id, SNDMORE)
  c.apiSocket.send($data.time, SNDMORE)
  c.apiSocket.send($data.typ, SNDMORE)
  c.apiSocket.send(data.topic, SNDMORE)
  c.apiSocket.send(data.data.toJson())
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
  msg.topic = await client.subSocket.receiveAsync()
  msg.source = await client.subSocket.receiveAsync()
  msg.id = await client.subSocket.receiveAsync()
  let time = (await client.subSocket.receiveAsync()).parseInt()
  if time.isOld(client.timeout): raise newException(SlowMessageDefect, fmt"MSG age older then the current timeout of {client.timeout}. DO NOT EXCEPT THIS.")
  msg.time = time
  let etyp = (await client.subSocket.receiveAsync()).parseInt()
  msg.typ = EventType(etyp)
  # TODO protobuffs man
  msg.data = (await client.subSocket.receiveAsync()).fromjson(typ)
  result = msg
proc newClient*(actorName: string, address: string, apiAddress: string,
    timeout: int = 10, subscriptions: seq[string]): Client =
  let id = ulid()
  result = Client(actorName: actorName, address: address,
      subscriptions: subscriptions, apiAddress: apiAddress,
      id: fmt"{actorName}-{id}", timeout: timeout)


proc subscribe*(client: Client, topic: string) =
  client.subscriptions.add(topic)
  client.subsocket.setsockopt(SUBSCRIBE, topic)


proc unsubscribe*(client: Client, topic: string) =
  let i = client.subscriptions.find(topic)
  client.subscriptions.delete(i)
  client.subsocket.setsockopt(UNSUBSCRIBE, topic)


proc connect*(client: Client) =
  client.subsocket = zmq.connect(client.address, SUB)
  client.apiSocket = zmq.connect(client.apiAddress, REQ)
  for topic in client.subscriptions:
    client.subsocket.setsockopt(SUBSCRIBE, topic)


proc close*(client: Client) =
  client.subsocket.close()
  client.apisocket.close()

proc runInbox*[T](typ: typedesc[T], client: Client, inbox: Inbox[T]) {.async.} =
  var poller: ZPoller
  poller.register(client.subsocket, ZMQ_POLLIN)
  var message: Message[typ]
  while true:
    let res = poll(poller, 500)
    if res > 0:
      if events(poller[0]):
        message = await typ.fetch(client)
        when defined(debug):
          echo message
        if inbox.filter(message):
          inbox.push(message)
    while not inbox.isEmpty:
      message = inbox.pop
      await inbox.callback(message)


template run*(data: untyped): untyped =
  while true:
    data
    poll()


template withInbox*[T](typ: typedesc[T], client: Client, inbox: Inbox[T],
    body: untyped): untyped  =
  var poller: ZPoller
  poller.register(client.subsocket, ZMQ_POLLIN)
  var message: Message[typ]
  while true:
    let res = poll(poller, 500)
    if res > 0:
      if events(poller[0]):
        message = await typ.fetch(client)
        if inbox.filter(message):
          asyncCheck inbox.callback(message)
    else:
      discard
      when defined(debug):
        echo "No messages"
    body
when isMainModule:
  const address = "tcp://localhost:6000"
  const api = "tcp://localhost:6001"
  var client = newClient("test", address, api, 10, @["test"])
  echo client.id
