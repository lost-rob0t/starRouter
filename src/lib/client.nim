import zmq
import asyncdispatch
import tables
import heapqueue
import sequtils
import proto
import deques, jsony
type
  Service* = object
    ## RPC Service
    name*: string
    callback*: proc ()
  Job* = ref object
    priority: int
    service: Service
  Inbox*[T] = ref object
    ## New Documents inbox
    ## callback will be called when documents are added to the inbox
    ## filter proc is a predicate that can be used to filter out un-related doucments
    ## All inboxes will need to use Message[type]!
    documents*: Deque[T]
    callback*: proc (doc: T): Future[void] {.async.}
    filter*: proc (doc: T): bool
    size*: int
  Client* = ref object
    ## Main Actor Client
    ## Job: Active Jobs that need to be executed, implemented with a Pritority Queue
    jobs*: HeapQueue[Job]
    ## Actor Name
    actorName*: string

    ## Topics the actor is subscripted to.
    subscriptions*: seq[string]
    ## Services: Is a RPC/task that an Actor can perform
    services: Table[string, Service]
    subsocket: ZConnection
    apiSocket: ZConnection
    ## Connection string
    address*: string
    apiAddress*: string
    #inbox*: seq[T]

proc `<`*(x:  Job, y: Job): bool = x.priority < y.priority

proc `>`*(x:  Job, y: Job): bool = x.priority > y.priority

proc `<=`*(x: Job, y: Job): bool = x.priority <= y.priority


proc `>=`*(x: Job, y: Job): bool = x.priority >= y.priority

proc `==`*(x: Job, y: Job): bool = x.priority == y.priority



proc newService*(callback: proc(), name: string): Service =
  Service(callback: callback, name:name)

proc registerService*(client: Client, service: Service) =
  client.services[service.name] = service
  # TODO Publish Service to server
proc removeService*(client: Client, service: Service) =
  client.services.del(service.name)

proc newInbox*[T](typ: typedesc[T] , n: int): Inbox[T] =
  Inbox[typ](documents: initDeque[typ](n))


proc registerCB*[T](inbox: Inbox[T], callback: proc(doc: T): Future[void]) =
  ## Add a Callback to the inbox
  # TODO multiple callbacks?
  inbox.callback = callback


proc registerFilter*[T](inbox: Inbox[T], filter: proc(doc: T): bool) =
  inbox.filter = filter



func isFull*[T](inbox: Inbox[T]): bool = inbox.size < len(inbox.documents)

func isEmpty*[T](inbox: Inbox[T]): bool = len(inbox.documents) == 0

func pop*[T](inbox: Inbox[T]): T = inbox.documents.popLast

func push*[T](inbox:Inbox[T], item: T) = inbox.documents.addFirst(item)

proc emit*[T](client: Client, data: T, tries: int = 0)  {.async.} =
  var i = tries
  client.apiSocket.send($data)
  echo await client.apiSocket.receiveAsync()

proc fetch*[T](typ: typedesc[T] = T, client: Client, ): Future[seq[T]] {.async.} =
  # NOTE: Subs always miss the first message.
  let data = await client.subSocket.receiveAsync()
  var r: seq[typ]
  try:
    r.add(typ.parseMessage(data))
  except KeyError:
    #NOTE We got the wrong type for this queue. Ignore it and move on.
    discard
func newClient*(actorName: string, address: string, apiAddress: string, subscriptions: seq[string]): Client =
  var client = new(Client)
  result = Client(actorName: actorName, address: address, subscriptions: subscriptions, apiAddress: apiAddress)

proc subscribe*(client: Client, topic: string)  =
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

proc runInbox*[T](typ: typedesc[T] = T, client: Client, inbox: Inbox[T]) {.async.}  =

  var client = client
  while true:
    var inbox = inbox
    let data = await typ.fetch(client)
    let messages = data.filter(inbox.filter)
    var message: typ
    for item in messages:
      inbox.push(item)
      when defined(debug):
        echo inbox.documents.len
    while not inbox.isEmpty:
      message = inbox.pop
      await inbox.callback(message)


template run*(body: untyped): untyped =
  while true:
    body
    poll()


template withInbox*[T](client: Client, inbox: Inbox[T], typ: typedesc[T] = T, body: untyped): untyped {.dirty.}  =
  let data  = await client.fetch[typ]
  let messages = data.filter(inbox.filter)
  for msg in messages:
    inbox.push(msg.parseMessage(T))
  # might remove the inbox cb or not call it here?
  var message {.inject.}: typ
  while not inbox.isEmpty:
    message = inbox.pop
    body
when isMainModule:
  import strformat
  import json
  import starintel_doc except Message
  const address = "tcp://localhost:6000"
  const api = "tcp://localhost:6001"
  var client = newClient("test", address, api,@["test"])
  client.connect()
  var subscriber = zmq.connect(address, SUB)
  proc subscriber1(id: int): Future[void] {.async.} =
    # subscribe to port 5555#

    # no filter
    subscriber.setsockopt(SUBSCRIBE, "")

    # NOTE: subscriber always miss the first messages that the publisher sends
    # reference: https://zguide.zeromq.org/docs/chapter1/#Getting-the-Message-Out
    var data = await subscriber.receiveAsync()
    data = await subscriber.receiveAsync()
    #let person = data.parseMessage(Person)
  while true:
      let doc = Person(fname: "Prime", lname: "gen", dataset: "Awsome Youtubers")
      let message = Message[Person](data: doc, topic: "Person", typ: EventType.newDocument)
      doc.makeUUID()
      let j = %*message
      asyncCheck client.emit(j)
      asyncCheck subscriber1(1)
      asyncCheck sleepAsync(1000)
