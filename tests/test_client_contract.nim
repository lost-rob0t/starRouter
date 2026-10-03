## Compile-only generic instantiation: no broker connections or data writes.
import std/[asyncdispatch, json]
import ../src/starRouterpkg/[client, proto]
proc canonicalSend(c: Client) {.async.} =
  let doc = %*{"id":"document:one", "dtype":"document", "dataset":"test", "schemaVersion":"0.10.1", "deleted":false}
  await c.emit(newMessage(doc, newDocument, "test", "document"))
  await c.emit(newMessage($doc, newDocument, "test", "document"))
