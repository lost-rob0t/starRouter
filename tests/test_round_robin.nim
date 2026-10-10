import std/unittest
import ../src/starRouterpkg/server

suite "deterministic actor selection":
  test "unordered registrations rotate in canonical identity order":
    for ids in [
        @["worker-c", "worker-b", "worker-a"],
        @["worker-a", "worker-c", "worker-b"],
        @["worker-b", "worker-a", "worker-c"]]:
      var last = ""
      for expected in ["worker-a", "worker-b", "worker-c", "worker-a", "worker-b"]:
        let selected = nextActorId(ids, last)
        check selected == expected
        last = selected

  test "joins and departures advance from last routed identity":
    check nextActorId(@["worker-a", "worker-c"], "worker-b") == "worker-c"
    check nextActorId(@["worker-a", "worker-c"], "worker-c") == "worker-a"
    check nextActorId(@["worker-a", "worker-b", "worker-c"], "worker-b") == "worker-c"

  test "empty candidate set fails deterministically":
    expect ValueError:
      discard nextActorId(newSeq[string](), "")
