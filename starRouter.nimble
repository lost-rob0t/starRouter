# Package

version       = "0.3.1"
author        = "nsaspy"
description   = "The Messaging Broker for starintel!"
license       = "MIT"
srcDir        = "src"
installExt    = @["nim"]
bin           = @["starRouter"]


# Dependencies

requires "nim >= 2.0.0"
requires "https://github.com/lost-rob0t/starintel-doc.nim.git#827f2c072e9893561a1925c47f898458bafd6759"
requires "https://github.com/nim-lang/nim-zmq.git#a56af54f599337a8f5d4934fcff7554c74f77854"
requires "cligen"
requires "https://github.com/treeform/jsony.git#bb647e1ca21af25ffdc423bcb96feeeeae963ca2"
requires "ulid"

task test, "Run deterministic wire-contract and local broker tests":
  exec "nim c -r --path:src tests/test_wire.nim"
