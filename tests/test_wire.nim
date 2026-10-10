import std/[unittest, json, asyncdispatch, strutils, os]
import ../src/starRouterpkg/[wire, proto, client]

let valid = "{\"id\":\"person-current\", \"dataset\":\"fixture\",\"dtype\":\"person\",\"schemaVersion\":\"0.10.1\",\"fname\":\"Ada\",\"extensions\":{\"opaque\":{\"flag\":false,\"nil\":null,\"items\":[]}}}"

suite "StarLang document wire boundary":
  test "raw JSON remains exact, including opaque false/null/empty values":
    check encodePayload(valid, newDocument) == valid
    check parseJson(encodePayload(parseJson(valid), updateDocument)) == parseJson(valid)

  test "client message records the requested event":
    let c = newClient("test", "inproc://unused-sub", "inproc://unused-api", subscriptions = @[])
    check c.newMessage(parseJson(valid), updateDocument, "ignored", "person").typ == updateDocument

  test "invalid documents fail before any unconnected socket is accessed":
    let c = newClient("test", "inproc://unused-sub", "inproc://unused-api", subscriptions = @[])
    for invalid in ["[]", "{\"dtype\":\"person\"}", valid.replace("0.10.1", "0.10.2")]:
      expect ValueError:
        waitFor c.emit(newMessage(invalid, newDocument, "test", "person"))

  test "legacy-shaped 0.10.1 is rejected and target events require target dtype":
    expect ValueError:
      validatePayload("{\"_id\":\"p\",\"dtype\":\"person\",\"schema_version\":\"0.10.1\",\"data\":{}}", newDocument)
    expect ValueError:
      validatePayload(valid, target)

  test "broker control messages do not require document fields":
    check encodePayload("", EventType.register) == "\"\""
    validatePayload("", heartbeat)

  test "source-approved historical 0.9.0 input is strict and lossless":
    let legacy = """{"_id":"starintel:person:test","dataset":"test","dtype":"person","schema_version":"0.9.0","version":1,"date_added":"2026-10-04T00:00:00Z","date_updated":"2026-10-04T00:00:00Z","sources":[],"evidence":[],"data":{"fname":"Ada"},"extensions":{"opaque":{"flag":false,"nil":null}}}"""
    putEnv("STARINTEL_SCHEMA", "/nonexistent-operator-schema")
    try:
      check encodePayload(legacy, newDocument) == legacy
    finally:
      delEnv("STARINTEL_SCHEMA")
    let malformed = parseJson(legacy)
    malformed.delete("_id")
    expect ValueError:
      validatePayload($malformed, newDocument)

suite "client idle liveness":
  test "poll converts seconds to milliseconds and rejects invalid intervals":
    check pollTimeoutMillis(1) == 1000
    check pollTimeoutMillis(10) == 10000
    expect ValueError:
      discard pollTimeoutMillis(0)
    expect ValueError:
      discard pollTimeoutMillis(-1)
    expect ValueError:
      discard pollTimeoutMillis(int(high(int32)) div 1000 + 1)
    expect ValueError:
      discard newClient("test", "inproc://unused-sub", "inproc://unused-api",
          timeout=0, subscriptions = @[])
