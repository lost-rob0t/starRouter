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
requires "https://github.com/nim-lang/nim-zmq.git#a56af54f599337a8f5d4934fcff7554c74f77854"
requires "cligen"
requires "ulid"
requires "morelogging"
