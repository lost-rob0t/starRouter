## Pure heartbeat-window accounting for legacy StarRouter registrations.
## Poll rate must not determine actor eviction; elapsed heartbeat intervals do.
type HeartbeatCounter* = object
  lives*: int
  lastBeat*: int64
  chargedWindows*: int64

proc newHeartbeatCounter*(now: int64, maxLives: int): HeartbeatCounter =
  if maxLives <= 0:
    raise newException(ValueError, "maxLives must be positive")
  result = HeartbeatCounter(lives: maxLives, lastBeat: now)

proc refresh*(counter: var HeartbeatCounter, now: int64, maxLives: int) =
  ## Registration/heartbeat establishes a fresh deadline and replenishes lives.
  counter = newHeartbeatCounter(now, maxLives)

proc accrue*(counter: var HeartbeatCounter, now: int64, timeout: int) =
  ## Account only *new* missed windows. Repeated calls at the same time are
  ## idempotent, even if thousands of messages arrive between heartbeats.
  if timeout <= 0:
    raise newException(ValueError, "heartbeat timeout must be positive")
  if now <= counter.lastBeat or counter.lives <= 0:
    return
  let windows = (now - counter.lastBeat) div int64(timeout)
  if windows <= counter.chargedWindows:
    return
  let missed = windows - counter.chargedWindows
  counter.chargedWindows = windows
  if missed >= int64(counter.lives):
    counter.lives = 0
  else:
    counter.lives -= int(missed)
