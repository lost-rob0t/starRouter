# Embedded native boundary (experimental, incomplete)

This optional shared library is a bounded ROUTER transport foundation for an
in-process Server adapter. It is **not yet the embedded SC01 StarRouter broker**
and does not implement Actor2Actor lifecycle/application semantics. The existing
SC01 executable and Rabbit transports are unchanged. No full integration or
production support is claimed by this package.

Build/test/install with `nix build .#embedded -L`. The derivation executes the
actual library and loopback DEALER tests before and after installation. The
library is `$out/lib/libstarrouter.so`; the C contract is
`$out/include/starrouter.h`. No dependency lock changes are needed.

The Nim library entry compiles a thin C/libzmq boundary. Exported calls do not
enter Nim GC/runtime state on Lisp threads. No callbacks or native application
threads are created. The host passes its existing libzmq context; the library
never creates or terminates a context. Host and binding must load the same
libzmq binary. Close every handle before host context termination.

ABI version is 1. Initialize the uint64 handle storage to zero before `sr_open`.
`sr_close` clears it and is idempotent for zero. Stale copied tokens fail closed;
tokens are not pointers. All handle calls including close must run on the thread
that opened the handle. A process-wide lock protects token lookup, while socket I/O runs outside
that lock on its exclusive owner thread. This is not a throughput claim. At most 64 handles are admitted, with at most 16 MiB per handle and finite
1–1000 ms I/O timeouts. Only literal loopback TCP listeners are accepted.

Select `star.actor2actor/1` explicitly. SC01 and all other profiles return
`SR_PROFILE`; there is no autodetection or fallback. One opaque body frame follows
the ROUTER routing identity. The host must use canonical StarLang
`star-actor-wire` encoding/validation and perform authorization before effects.
A route token is not authentication or tenant identity.

Receive copies into caller-owned byte buffers and reports lengths. Insufficient
capacity returns `SR_BUFFER_SMALL` while retaining the message for retry. No
allocation crosses the ABI. Unexpected multipart frames poison/close the socket;
close the handle before reopening. A malformed peer can therefore interrupt
other peers sharing this listener; hostile multi-peer admission is not supported. A partial multipart send likewise poisons the
socket, avoiding reuse of ambiguous framing, and returns
`SR_OUTCOME_UNKNOWN`. An unroutable identity returns `SR_NO_ROUTE` before body
transmission. `SR_OK` from send means socket queue
acceptance only, never actor admission or persistence. `SR_AGAIN` is a bounded
transport wait result, not proof the application did not execute a prior command.

Outstanding: actual SC01 broker embedding/reuse, canonical host lifecycle and
policy integration, Server durable readback, Rabbit regression E2E, reconnect and
backpressure fault coverage, and exact-head native CI. Python syntax checks alone
are not native execution evidence. This package must remain experimental until
those acceptance gates are satisfied.

Local evidence (2026-10-25): nine direct ctypes/libzmq tests passed using the C
source compiled with `-Wall -Wextra -Werror` and a temporary declaration-only
libzmq ABI header. The system lacks development headers, Nim and Nix. This proves
the C boundary against the installed runtime, not Nim compilation, installed
Nix packaging, the legacy broker, or Server end-to-end integration.
