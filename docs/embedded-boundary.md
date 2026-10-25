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

## SC01 broker embedding extension

The separate `sr_sc01_*` functions now compile the real Nim broker core into the
shared library. The standalone executable and embedded path share
`prepareClientMessage`, `applyClientMessage`, document validation, actor ownership,
liveness, target recipient selection and six-frame PUB projection. SC01 is never
accepted by `sr_open` or silently interpreted as actor2actor.

`sr_sc01_open(context, api, pub, max_payload, hwm, timeout_ms, &handle)` borrows
one host context and opens two loopback endpoints on a dedicated native worker.
The handle's creating API thread submits synchronous bounded commands through
C-owned buffers; only the worker owns sockets and Nim references. The build uses
Nim `--threads:on --mm:refc`. The worker calls `setupForeignThreadGc` before Nim
allocation and `tearDownForeignThreadGc` after releasing its rooted core; it never
calls Lisp. Closing joins that worker before allowing context teardown. See
[Nim backend integration](https://nim-lang.org/docs/backends.html) and
[Nim system threading API](https://nim-lang.org/docs/system.html#setupForeignThreadGc).

`sr_sc01_receive` returns nine original ROUTER frames in a caller buffer:
repeated four-byte **big-endian** lengths followed by raw frame bytes. This is
only an FFI carrier of the existing SC01 message. The worker reuses the existing
SC01 parser and pinned generated document validator. A small buffer leaves the
pending event intact. Repeated receives return the same pending event until
settlement; there is one in-flight host decision per broker. At most 16 embedded
SC01 handles and 1024 registered actors per handle are supported. Metadata frames
are bounded to 255 bytes and payloads to the configured maximum.

The host must authorize registration, heartbeat, Target and document events.
The transport identity alone never authorizes them. Call
`sr_sc01_settle(handle, 1)` only after host authorization and, for documents,
authoritative durable commit/idempotent reconciliation. Rejection uses
`sr_sc01_settle(handle, 0)`. No automatic SC01 ACK precedes this decision.
Accepted events preserve the legacy PUB projection before ACK. If a publication
or ACK may have partially sent, the handle returns outcome-unknown and closes
its sockets. Retrying requires host reconciliation, not blind replay.

`sr_sc01_target(handle, actor, message_id, body, length)` is the trusted host
Target dispatch entry. It validates the canonical Target and uses the same
registered-recipient selection and legacy newDocument projection as the CLI.
PUB success remains lossy transport receipt; it cannot promise actor admission
or target execution. Host deadlines, leases, replay and effect idempotency remain
necessary. Liveness maintenance and broker heartbeats occur every ten seconds
while the host services the handle. Malformed multipart closes the listener;
malformed complete SC01 commands receive NACK without becoming authorized.

`tests/embedded_sc01.py` executes real shared-library Nim core/DEALER/SUB traffic,
requires explicit host settlement before ACK, validates canonical document and
Target routing, rejects malformed documents and spoofed registered identities,
and repeats worker teardown. These tests are authored but not yet executed in
the local environment; the Nim/Nix hosted gate must run before claiming success.
The earlier foundation-only limitation is superseded for SC01 implementation
source, not for unexecuted runtime evidence or Server end-to-end acceptance.
