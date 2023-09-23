# Package

version       = "0.2.0"
author        = "nsaspy"
description   = "The Messaging Broker for starintel!"
license       = "MIT"
srcDir        = "src"
installExt    = @["nim"]
#bin           = @["starRouter"]


# Dependencies

requires "nim >= 1.6.14"
requires "zmq == 1.4.0"
requires "cligen"
requires "ulid"
