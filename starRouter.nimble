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
requires "zmq >= 1.4.0"
requires "mycouch >= 0.4.2"
requires "https://github.com/lost-rob0t/redpool.git"
requires "cligen"
requires "ulid"
