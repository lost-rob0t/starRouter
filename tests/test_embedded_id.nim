import std/[sets, times, unittest, strutils]
import ../src/starRouterpkg/embeddedid

suite "Embedded worker IDs avoid cross-heap global RNG state":
  test "ULID width alphabet timestamp and uniqueness remain intact":
    var seen = initHashSet[string]()
    let before = uint64(epochTime() * 1000.0)
    for iteration in 0..<1000:
      let id = freshEmbeddedId()
      check id.len == 26
      check id[0] in {'0'..'7'}
      var timestamp: uint64 = 0
      for index, c in id:
        let digit = "0123456789ABCDEFGHJKMNPQRSTVWXYZ".find(c)
        check digit >= 0
        if index < 10: timestamp = (timestamp shl 5) or uint64(digit)
      check timestamp >= before
      check timestamp <= uint64(epochTime() * 1000.0)
      check id notin seen
      seen.incl(id)
