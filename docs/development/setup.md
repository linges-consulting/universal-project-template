# Development setup

**Purpose:** Provide a reproducible path from a fresh clone to a validated development environment. **Audience:** Contributors. **Maintenance:** Update whenever prerequisites, configuration, or commands change. Test instructions on a clean environment. **Related:** `../../README.md`, `coding-conventions.md`, `../deployment/README.md`.

## Prerequisites

`[Runtime, package manager, system tools, and supported versions — not yet selected.]`

## Setup

1. Clone the repository.
2. Run `./scripts/init-project.sh`.
3. `[Install selected toolchain and dependencies.]`
4. Copy safe example configuration to a local ignored file and obtain secrets through the approved secret manager.
5. `[Initialize local services or data using non-production fixtures.]`

## Run and validate

```text
[FORMAT_COMMAND]
[LINT_COMMAND]
[TYPECHECK_COMMAND]
[TEST_COMMAND]
[BUILD_COMMAND]
[RUN_COMMAND]
```

Replace placeholders when the stack is selected. Do not claim setup is complete while placeholder commands remain.

## Troubleshooting

`[Record recurring, verified solutions only; never paste credentials or private logs.]`

