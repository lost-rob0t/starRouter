# Package

version       = "0.1.0"
author        = "nsaspy"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"
installExt    = @["nim"]
bin           = @["starRouter"]


# Dependencies

requires "nim >= 1.6.14"
requires "zmq"
