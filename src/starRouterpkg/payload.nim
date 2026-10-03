## Opaque document payloads must survive relay/replay without a second JSON encoding.
import std/json

proc encodePayload*(data: string): string = data
proc encodePayload*(data: JsonNode): string = $data
proc encodePayload*[T](data: T): string = $(%*data)
