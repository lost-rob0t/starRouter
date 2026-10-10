import times

proc unix*(): int64 =
  now().toTime().toUnix()

func isOldAt*(t: int64, timeout: int, current: int64): bool =
  ## Compare an entire signed-64 timestamp interval without signed overflow.
  ## On both sides of Unix epoch, the uint64 bit-pattern subtraction yields
  ## the exact nonnegative elapsed interval when current > t.
  if timeout < 0:
    raise newException(ValueError, "Expiry timeout must be nonnegative")
  if current <= t:
    return false
  let elapsed = cast[uint64](current) - cast[uint64](t)
  result = elapsed > uint64(timeout)

proc isOld*(t: int64, timeout: int): bool =
  isOldAt(t, timeout, unix())
