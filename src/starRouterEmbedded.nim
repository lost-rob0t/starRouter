## Native embedding boundary. No Nim heap objects cross this C ABI and exported
## functions do not enter the Nim runtime on foreign Lisp threads.
## SC01 remains owned by starRouterpkg/server; this initial boundary is NOT an
## implementation of that broker or a full Actor2Actor service.
{.passC: "-Iinclude".}
{.passL: "-lzmq -lpthread".}
{.compile: "../native/embedded.c".}
