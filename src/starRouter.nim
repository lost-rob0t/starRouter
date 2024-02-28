# This is just an example to get you started. A typical hybrid package
# uses this file as the main entry point of the application.

import zmq
import std/strformat
import asyncdispatch
import cligen
import starRouterpkg/[client, server, proto]
import morelogging
import strutils
from logging import Level, LevelNames
import os

export client, server, proto

proc main(pubAddress: string = "tcp://*:6000",
    apiAddress: string = "tcp://*:6001") =
  let level = parseEnum[Level](getEnv("ROUTER_LOG_LEVEL", "lvlInfo"))
  var log = newAsyncFileLogger(filename_tpl=getEnv("FEDIWATCH_LOG", "$appname.$y$MM$dd.log"), flush_threshold=level)
  var router = newStarRouter(pubAddress, apiAddress)
  log.info fmt"starRouter api address: {apiAddress}"
  log.info fmt"starRouter pub/sub address: {pubAddress}"
  waitFor router.run()

when isMainModule:
  dispatch main
