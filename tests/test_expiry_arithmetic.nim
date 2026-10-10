## Native deterministic regression for overflow-safe timestamp expiry.
import std/unittest
import ../src/starRouterpkg/utils

suite "SC01 expiry arithmetic":
  test "strict elapsed boundary and zero budget":
    check not isOldAt(100'i64, 10, 110'i64)
    check isOldAt(100'i64, 10, 111'i64)
    check not isOldAt(100'i64, 0, 100'i64)
    check isOldAt(100'i64, 0, 101'i64)

  test "signed epoch extremes never wrap into fresh data":
    check isOldAt(low(int64), 1, 0'i64)
    check isOldAt(low(int64), high(int), high(int64))
    check isOldAt(-2'i64, 2, 1'i64)
    check not isOldAt(high(int64), 1, 0'i64)
    check not isOldAt(high(int64), 1, low(int64))

  test "negative timeouts fail closed instead of accepting everything":
    expect ValueError:
      discard isOldAt(0'i64, -1, 0'i64)
