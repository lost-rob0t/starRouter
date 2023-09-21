import times

proc unix*(): int64 =
  now().toTime().toUnix()

proc isOld*(t: int64, timeout: int): bool =
  let
    current = unix()
    age = current - t

  result = age > timeout
