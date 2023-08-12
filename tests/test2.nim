import unittest
import ../src/starRouter except StarRouter
import asyncdispatch
import githubForge, json, jsony
import dotenv, os
from starintel_doc import Username, timestamp, newUsername


proc getUsers*(client: AsyncGithubClient, since, page: int): Future[seq[Message[Username]]] {.async.} =
  let resp = await client.listUsers(since, page)
  var users: seq[Message[Username]]
  for user in resp:
    var doc = newUsername(user["login"].getStr(""), "github.com", user["url"].getStr(""))
    doc.dataset = "Github Users"
    doc.timestamp
    users.add(Message[Username](data: doc, topic: "Username", typ: EventType.newDocument))
  result = users

proc main() {.async.} =
  load()
  let token = getEnv("token")
  var client: Client
  client = newClient("test", "tcp://127.0.0.1:6000", "tcp://127.0.0.1:6001", 5, @["Username"])
  echo client.apiAddress
  client.connect()
  var github = newAsyncGithub(token, "2022-11-28")
  let page = 30
  var i = 1
  while true:
    when defined(debug):
      echo "Start of loop"
    let messages = await github.getUsers(i, page)
    when defined(debug):
      echo messages
    for message in messages:
      await client.emit(message, newDocument)
    await sleepAsync(1000)
    i += 30
when isMainModule:
  waitFor main()
