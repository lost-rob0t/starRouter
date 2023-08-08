# This is just an example to get you started. A typical hybrid package
# uses this file as the main entry point of the application.

import zmq
import std/strformat
import mycouch
import asyncdispatch
import cligen
import lib/[client, server, proto]
export client, server, proto



proc main(pubAddress: string = "tcp://localhost:6000", apiAddress: string = "tcp://localhost:6001")  =
  var router = newStarRouter(pubAddress, apiAddress)
  waitFor router.run()

dispatch main
