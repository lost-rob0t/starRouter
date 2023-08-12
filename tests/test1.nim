# This is just an example to get you started. You may wish to put all of your
# tests into a single file, or separate them into multiple `test1`, `test2`
# etc. files (better names are recommended, just make sure the name starts with
# the letter 't').
#
# To run these tests, simply execute `nimble test`.

import unittest

import ../src/starRouter
from starintel_doc import Username
import asyncdispatch
proc echoUsername*[T](doc: Message[T]) {.async.} =
  echo doc.data.username
  echo doc.data.dataset

proc testFilter[T](doc: T): bool =
  result = true

proc main() {.async.} =
  var client = newClient("github-actor", "tcp://127.0.0.1:6000", "tcp://127.0.0.1:6001", 10, @[""])
  client.connect
  var inbox = Message[Username].newInbox(100)
  inbox.registerCB(echoUsername)
  inbox.registerFilter(testFilter)
  await Message[Username].runInbox(client, inbox)


waitFor main()
