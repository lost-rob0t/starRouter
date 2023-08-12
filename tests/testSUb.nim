import std/asyncdispatch
import std/strformat
import zmq


proc subscriber(id: int): Future[void] {.async.} =
  const connStr = "tcp://localhost:6000"

  # subscribe to port 5555
  echo fmt"subscriber {id}: connecting to {connStr}"
  var subscriber = zmq.connect(connStr, SUB)
  defer: subscriber.close()

  # no filter
  subscriber.setsockopt(SUBSCRIBE, "Username")

  # NOTE: subscriber always miss the first messages that the publisher sends
  # reference: https://zguide.zeromq.org/docs/chapter1/#Getting-the-Message-Out
  while true:
    var data = await subscriber.receiveAsync()
    echo fmt"subscriber {id}: received ", data

waitFor subscriber(1)
