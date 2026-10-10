import std/[unittest, asyncdispatch, os]
import zmq
import ../src/starRouterpkg/server

suite "SC01 multipart frame retention":
  test "excess frames are drained with bounded retention and the next message survives":
    let socketFile = getTempDir() / ("ss12-multipart-" & $getCurrentProcessId() & ".sock")
    if fileExists(socketFile):
      removeFile(socketFile)
    let endpoint = "ipc://" & socketFile
    let receiver = zmq.listen(endpoint, PAIR)
    let sender = zmq.connect(endpoint, PAIR)
    try:
      var excess: seq[string] = @[]
      for index in 0..<64:
        excess.add("frame-" & $index)
      sender.sendAll(excess)
      let retained = waitFor receiveMultipart(receiver, 10)
      check retained == excess[0..<10]
      sender.sendAll(@["topic", "payload"])
      let recovered = waitFor receiveMultipart(receiver, 10)
      check recovered == @["topic", "payload"]
      sender.sendAll(excess)
      let unlimited = waitFor receiveMultipart(receiver)
      check unlimited == excess
      expect ValueError:
        discard waitFor receiveMultipart(receiver, 0)
    finally:
      sender.close()
      receiver.close()
      if fileExists(socketFile):
        removeFile(socketFile)

