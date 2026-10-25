## Worker-local ULID generation. The legacy ulid package keeps a GC-managed
## global RNG closure; foreign refc heaps must never borrow that closure.
## Format remains 48-bit millisecond timestamp + 80 OS-random bits in Crockford
## Base32. No mutable Nim global or foreign heap reference is retained.
import std/[sysrand, times]
const Alphabet = "0123456789ABCDEFGHJKMNPQRSTVWXYZ"

proc freshEmbeddedId*(): string =
  var bytes: array[16, byte]
  var random: array[10, byte]
  if not urandom(random):
    raise newException(IOError, "OS entropy unavailable for embedded router ID")
  let milliseconds = uint64(epochTime() * 1000.0)
  for i in 0..5:
    bytes[i] = byte((milliseconds shr ((5-i)*8)) and 255)
  for i in 0..9: bytes[i+6] = random[i]
  result = newString(26)
  # ULID has 128 significant bits and two leading zero padding bits.
  for group in 0..25:
    var value = 0
    for bit in 0..4:
      let position = group*5 + bit - 2
      value = value shl 1
      if position >= 0:
        value = value or int((bytes[position div 8] shr (7-position mod 8)) and 1)
    result[group] = Alphabet[value]
