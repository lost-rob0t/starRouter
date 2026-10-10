import std/unittest
import ../src/starRouterpkg/[heartbeat, server]

suite "legacy actor heartbeat deadlines":
  test "busy broker cannot consume more than one life in one heartbeat window":
    var counter = newHeartbeatCounter(100, 5)
    for _ in 0..<2000:
      counter.accrue(111, 10)
    check counter.lives == 4
    check counter.chargedWindows == 1
    for _ in 0..<2000:
      counter.accrue(119, 10)
    check counter.lives == 4
    counter.accrue(120, 10)
    check counter.lives == 3

  test "late poll charges exactly elapsed windows and clamps at zero":
    var counter = newHeartbeatCounter(100, 5)
    counter.accrue(139, 10)
    check counter.lives == 2
    check counter.chargedWindows == 3
    counter.accrue(139, 10)
    check counter.lives == 2
    counter.accrue(199, 10)
    check counter.lives == 0
    counter.accrue(1000, 10)
    check counter.lives == 0

  test "valid heartbeat replenishes budget and resets charged windows":
    var counter = newHeartbeatCounter(100, 5)
    counter.accrue(129, 10)
    check counter.lives == 3
    counter.refresh(130, 5)
    check counter.lives == 5
    check counter.chargedWindows == 0
    counter.accrue(139, 10)
    check counter.lives == 5
    counter.accrue(140, 10)
    check counter.lives == 4

  test "before-deadline and backward time observations cannot charge":
    var counter = newHeartbeatCounter(100, 2)
    counter.accrue(90, 10)
    counter.accrue(100, 10)
    counter.accrue(109, 10)
    check counter.lives == 2
    check counter.chargedWindows == 0

  test "invalid lease settings fail at construction and accounting":
    expect ValueError:
      discard newHeartbeatCounter(100, 0)
    expect ValueError:
      discard newStarRouter(timeout = 0)
    expect ValueError:
      discard newStarRouter(maxLives = 0)
    var counter = newHeartbeatCounter(100, 5)
    expect ValueError:
      counter.accrue(110, 0)
    check counter.lives == 5
