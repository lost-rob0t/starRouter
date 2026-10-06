# This is just an example to get you started. A typical hybrid package
# uses this file as the main entry point of the application.

import zmq
import std/strformat
import asyncdispatch
import cligen
import starRouterpkg/[client, server, proto]
import logging
import strutils
from logging import Level, LevelNames
import os

export client, server, proto

proc main(pubAddress: string = "tcp://*:6000",
    apiAddress: string = "tcp://*:6001") =
  let level = parseEnum[Level](getEnv("ROUTER_LOG_LEVEL", "lvlInfo"))
  addHandler(newFileLogger(filename=getEnv("FEDIWATCH_LOG", "starRouter.log"), levelThreshold=level))
  var router = newStarRouter(pubAddress, apiAddress)
  info fmt"starRouter api address: {apiAddress}"
  info fmt"starRouter pub/sub address: {pubAddress}"
  waitFor router.run()

when isMainModule:
  dispatch main
