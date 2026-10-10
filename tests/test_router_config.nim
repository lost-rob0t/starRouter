import std/unittest
import ../src/starRouterpkg/server

suite "Broker constructor safety bounds":
  test "nonpositive timeouts are rejected before opening sockets":
    for seconds in [0, -1, -100]:
      expect ValueError:
        discard newStarRouter(timeout = seconds)

  test "nonpositive liveness budgets are rejected":
    for lives in [0, -1, -100]:
      expect ValueError:
        discard newStarRouter(maxLives = lives)

  test "valid explicit values are retained":
    let broker = newStarRouter(timeout = 1, maxLives = 2)
    check broker.timeout == 1
    check broker.maxLives == 2

  test "default broker config remains valid":
    let broker = newStarRouter()
    check broker.timeout == 10
    check broker.maxLives == 5
