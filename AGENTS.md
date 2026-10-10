# AGENTS.md — starRouter

This file is authoritative for automated contributors working in this repository.

## Repository execution rules

- Read current source, build documentation, live issues, and active pull requests before selecting work.
- Prefer focused regression tests and minimal implementation over speculative rewrites.
- Preserve existing runtime and generated-file authority boundaries.
- Never commit credentials or private deployment data.
- Never weaken tests, validation, or required checks to obtain green status.

<!-- BEGIN STARINTEL FLEET CONTRACT -->
## StarIntel 15-worker fleet contract

This repository participates in the StarIntel hourly worker fleet.

- **GitHub connector is the repository control surface for fleet automation.** Use the connected GitHub connector to read current `AGENTS.md`, repository files, issues, pull requests, branches, diffs, comments, reviews, and CI/check state, and for permitted writes. Attempt the connector before claiming GitHub repository access or mutation is unavailable.
- **Canonical StarIntel document authority is 0.10.1 generated from Star Language.** The source of truth is `lost-rob0t/star-lang/specs/starintel/0.10.1/core.star` and its generated artifacts. Consumer repositories must consume/pin generated output; they must not maintain a competing handwritten schema or revive 0.9.x as canonical authority.
- **Respect worker ownership.** SL01-SL05 own Star Language/compiler/schema domains; PA06-PA09 own Pro Actors/collection runtimes; SS10-SS13 own server/runtime/router/persistence/security; IR14-IR15 own cross-repo integration and release admission.
- **One writer per branch.** Re-fetch exact head/base immediately before mutation. Reuse an existing retained branch/PR when it owns the task. Never force-push or overwrite concurrent work.
- **Evidence is exact-head.** Required CI/checks must be observed on the exact candidate SHA; pending, skipped, stale, foreign, mock-only, or unrun evidence is not green.
- **Scheduled fleet tasks stay enabled.** Repository work must not disable a scheduled worker unless the operator explicitly asks for that task to be disabled.

Repository-specific rules still apply; stricter local rules win unless they conflict with canonical StarIntel 0.10.1 authority or an explicit current operator instruction.
<!-- END STARINTEL FLEET CONTRACT -->
