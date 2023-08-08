import jsony, json
import times
import strformat, strutils
import ulid
type
  EventType* = enum
    newDocument = 0,
    getDocument = 1,
    updateDocument = 2,
    newService = 3,
    removeService = 4,
    serviceRequest = 5,

  ServiceMessage* = object
    name*: string
    actorName*: string


  # TODO message id
  Message*[T] = object
    id*: string
    data*: T
    source*: string
    typ*: EventType
    time*: int64
    topic*: string
  SlowMessageDefect* = object of Defect
    timeAmount: int

# NOTE: This is sorta bad
# See status style guide
#converter toEvent(s: string): EventType = parseEnum[EventType](s)
converter `$`(x: EventType): int = x.ord


proc `$`*[T](message: Message[T], typ: typedesc[T] = T): string =
  var data: string
  data = toJson(message)
  let topic = message.topic
  result = fmt"""{topic}|{data}"""

proc newMessage*[T](data: T, eventType: EventType, source, topic: string): Message[T] =
  let time = now().toTime().toUnix()
  result = Message[typeOf(data)](data: data, source: source, id: ulid(), topic: topic, time: time)

proc parseMessage*[T](typ: typedesc[T] = T, message: string): T =
  let message = message.split("|", maxsplit=1)
  result = message[1].fromJson(typ)

when isMainModule:
  import starintel_doc, typetraits
  var
    username: Username
    relation: Relation
    doc: Person
  doc = Person(fname: "Prime", lname: "gen", dataset: "Awsome Youtubers")
  doc.timeStamp
  doc.makeUUID()
  username = newUsername("ThePrimeTimeagen", "youtube.com", "https://www.youtube.com/@ThePrimeTimeagen")
  relation = newRelation(doc.id, username.id, "youtube account", "Awsome Youtubers")
  let message1 = Message[Person](data: doc, topic: "Person", typ: EventType.newDocument)
  let message2 = Message[Username](data: username, topic: $typeof(username), typ: EventType.newDocument)
  let message3 = Message[Relation](data: relation, topic: $typeOf(relation), typ: EventType.newDocument)
  let message4 = username.newMessage(EventType.newDocument, "test", "Username")
  echo $message1
  echo $message2
  echo $message3
  echo $message4
  let msg = $message1
  echo Message[Person].parseMessage(msg).topic
