import unittest
import ../src/starRouter except StarRouter
import asyncdispatch
import githubForge, json, jsony
import dotenv, os
from starintel_doc import Username, Email, timestamp, newUsername, newEmail, Url, Org, Relation, newRelation, makeMD5ID
import strformat

proc getUsers*(client: AsyncGithubClient, since, page: int): Future[seq[Message[JsonNode]]] {.async.} =
  let resp = await client.listUsers(since, page)
  var users: seq[Message[JsonNode]]
  for user in resp:
    let username = user["login"].getStr("")
    var doc = newUsername(username, "github.com", fmt"https://github.com/{username}")
    doc.dataset = "github-users"
    doc.bio = user{"bio"}.getStr("")
    doc.timestamp
    var twitter = user{"twitter_username"}.getStr("")
    if twitter.len != 0:
      var twitterUser = newUsername(twitter, "twitter.com", fmt"https://twitter.com/{username}")
      twitterUser.timestamp
      twitterUser.dataset = "github-users"
      # TODO relation should have a type attached with note for better ssearching
      let relation = newRelation(doc.id, twitterUser.id, "controls", "github-users")
      users.add(Message[JsonNode](data: %*twitterUser, topic: "Username", typ: EventType.newDocument))
      users.add(Message[JsonNode](data: %*relation, topic: "Relation", typ: EventType.newDocument))
    let email = user{"email"}.getStr("")
    if email.len != 0:
      var emailDoc = newEmail(email)
      emailDoc.timestamp
      emailDoc.dataset = "github-users"
      let relation = newRelation(doc.id, emailDoc.id, "controls", "github-users")
      users.add(Message[JsonNode](data: %*emailDoc, topic: "Email", typ: EventType.newDocument))
      users.add(Message[JsonNode](data: %*relation, topic: "Relation", typ: EventType.newDocument))
    let blog = user{"blog"}.getStr("")
    if blog.len != 0:
      var url = Url(url: blog, content: "")
      url.makeMD5ID(blog)
      url.timestamp
      let relation = newRelation(doc.id, url.id, "controls", "github-users")
      users.add(Message[JsonNode](data: %*url, topic: "Url", typ: EventType.newDocument))
      users.add(Message[JsonNode](data: %*relation, topic: "Relation", typ: EventType.newDocument))
    users.add(Message[JsonNode](data: %*doc, topic: "Username", typ: EventType.newDocument))
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
