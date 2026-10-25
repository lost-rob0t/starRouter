#ifndef STARROUTER_H
#define STARROUTER_H
#include <stddef.h>
#include <stdint.h>
#ifdef __cplusplus
extern "C" {
#endif
/* ABI 1: synchronous, caller-thread-owned, borrowed context, no callbacks.
 * Handles are process-local monotonic tokens, never addresses. No success status
 * implies actor admission, authorization or durable commit. */
enum { SR_OK=0, SR_AGAIN=1, SR_BUFFER_SMALL=2, SR_INVALID=-1,
       SR_NATIVE=-2, SR_OWNER=-3, SR_PROFILE=-4, SR_MALFORMED=-5,
       SR_CLOSED=-6, SR_NO_ROUTE=-7, SR_OUTCOME_UNKNOWN=-8 };
uint32_t sr_abi_version(void);
int sr_open(void *context, const char *endpoint, const char *profile,
            uint32_t max_payload, uint32_t hwm, uint32_t timeout_ms,
            uint64_t *out_handle);
/* A small buffer retains the received message until a successful receive. */
int sr_receive(uint64_t handle, void *route, size_t route_cap,
               size_t *route_len, void *body, size_t body_cap, size_t *body_len);
int sr_send(uint64_t handle, const void *route, size_t route_len,
            const void *body, size_t body_len);
/* Idempotent for a zero token; successful close clears the caller's token. */
int sr_close(uint64_t *handle);
#ifdef __cplusplus
}
#endif
#endif
