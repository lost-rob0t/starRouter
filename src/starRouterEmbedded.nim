## C ABI uses C-owned bounded queues. Only the dedicated SC01 native worker
## enters Nim, with setupForeignThreadGc/tearDownForeignThreadGc under refc.
import starRouterpkg/embeddedcore
{.passC: "-Iinclude".}
{.passL: "-lzmq -lpthread".}
{.compile: "../native/embedded.c".}
{.compile: "../native/sc01.c".}
