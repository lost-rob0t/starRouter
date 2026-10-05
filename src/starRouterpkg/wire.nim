## Transparent document routing, validated against the pinned StarLang release.
import std/json
import starintel_doc/canonical as canonical
import starintel_doc/v090 as historical
import proto

const HistoricalSchemaText = staticRead("../../schemas/legacy/starintel-doc-v0.9.0.schema.json")
const CompatibilityText = staticRead("../../schemas/starintel-0.10.1/compatibility.json")

proc validatePayload*(payload: string, event: EventType) =
  if event notin {newDocument, updateDocument, target}: return

  let wireDocument = canonical.parseWireJson(payload)
  if wireDocument.kind != JObject:
    raise newException(ValueError, "StarIntel document payload must be an object")

  if wireDocument.hasKey("schemaVersion"):
    let checked = canonical.validateDocument(wireDocument)
    if not checked.ok: raise newException(ValueError, checked.category & ": " & checked.message)
  elif wireDocument.hasKey("schema_version") and wireDocument["schema_version"].kind == JString and
      wireDocument["schema_version"].getStr == "0.9.0" and
      %"0.9.0" in parseJson(CompatibilityText)["acceptedSchemaVersions"].getElems:
    let historicalDocument = parseJson(payload)
    let checked = historical.validateDocument(historicalDocument, parseJson(HistoricalSchemaText))
    if not checked.ok: raise newException(ValueError, checked.category & ": " & checked.message)
  else:
    raise newException(ValueError, "unsupported StarIntel schema version")

  if event == target and wireDocument["dtype"].getStr != "target":
    raise newException(ValueError, "target event requires a target document")

proc encodePayload*[T](data: T, event: EventType): string =
  when T is string:
    result = if event in {newDocument, updateDocument, target}: data else: $(%data)
  else:
    result = $(%*data)
  validatePayload(result, event)
