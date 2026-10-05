## Transparent document routing, validated against the pinned StarLang release.
import std/json
import starintel_doc/canonical as canonical
import starintel_doc/v090 as historical
import proto

const HistoricalSchemaText = staticRead("../../schemas/legacy/starintel-doc-v0.9.0.schema.json")
const CompatibilityText = staticRead("../../schemas/starintel-0.10.1/compatibility.json")

proc validatePayload*(payload: string, event: EventType) =
  if event notin {newDocument, updateDocument, target}: return
  let document = parseJson(payload)
  if document.kind != JObject:
    raise newException(ValueError, "StarIntel document payload must be an object")
  if document.hasKey("schemaVersion"):
    let checked = canonical.validateDocument(document)
    if not checked.ok: raise newException(ValueError, checked.category & ": " & checked.message)
  elif document.hasKey("schema_version") and document["schema_version"].kind == JString and
      document["schema_version"].getStr == "0.9.0" and
      %"0.9.0" in parseJson(CompatibilityText)["acceptedSchemaVersions"].getElems:
    let checked = historical.validateDocument(document, parseJson(HistoricalSchemaText))
    if not checked.ok: raise newException(ValueError, checked.category & ": " & checked.message)
  else:
    raise newException(ValueError, "unsupported StarIntel schema version")
  if event == target and document["dtype"].getStr != "target":
    raise newException(ValueError, "target event requires a target document")

proc encodePayload*[T](data: T, event: EventType): string =
  when T is string:
    result = if event in {newDocument, updateDocument, target}: data else: $(%data)
  else:
    result = $(%*data)
  validatePayload(result, event)
