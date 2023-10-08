# This is just an example to get you started. You may wish to put all of your
# tests into a single file, or separate them into multiple `test1`, `test2`
# etc. files (better names are recommended, just make sure the name starts with
# the letter 't').
#
# To run these tests, simply execute `nimble test`.

import unittest

import ../src/starRouter
import asyncdispatch
import strutils
import json
import suru

var bar = initSuruBar(1)
bar.setup()
proc incBar*[T](doc: Message[T]) {.async.} =
  bar[0].total += 1
  bar.update(500)
proc testFilter[T](doc: T): bool =
  result = true

proc main() =
  var client = newClient("measure-actor", "tcp://127.0.0.1:6000", "tcp://127.0.0.1:6001", 10, @[""])
  waitFor client.connect
  var inbox = JsonNode.newInbox(100)

  inbox.registerCB(incBar)
  inbox.registerFilter(testFilter)
  waitFor JsonNode.runInbox(client, inbox)


main()
import tables
