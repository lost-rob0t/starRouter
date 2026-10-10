import times

proc unix*(): int64 =
  now().toTime().toUnix()

proc isOld*(t: int64, timeout: int): bool =
  ## Reject timestamps outside the allowed freshness/skew window.
  ## An unsigned subtraction avoids overflow for the full int64 wire range.
  if timeout <= 0:
    raise newException(ValueError, "message timeout must be positive")
  let current = unix()
  let delta =
    if t > current:
      cast[uint64](t) - cast[uint64](current)
    else:
      cast[uint64](current) - cast[uint64](t)
  result = delta > uint64(timeout)
