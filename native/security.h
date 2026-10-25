#ifndef STARROUTER_SECURITY_H
#define STARROUTER_SECURITY_H
#include <stddef.h>
#include <stdint.h>
#ifdef __cplusplus
extern "C" {
#endif
/* One ZAP owner per borrowed context. Public keys are packed 32-byte CURVE
 * keys, copied before return (1..1024). No secret keys or Lisp callbacks.
 * Only the exact ZAP domain below and loopback addresses are authorized.
 * User-Id metadata is the lowercase 64-character public-key hex encoding.
 * Start waits for bind success; an existing ZAP endpoint fails closed.
 * Close on the creating thread BEFORE terminating the borrowed context.
 * Close clears the monotonic token; zero-token close is idempotent.
 * A running policy is immutable: stop its ROUTERs before replacing policy.
 */
#define SR_AUTH_DOMAIN "starrouter.loopback"
int sr_auth_start(void *context, const unsigned char *keys, size_t count,
                  uint64_t *out_handle);
int sr_auth_close(uint64_t *handle);
#ifdef __cplusplus
}
#endif
#endif
