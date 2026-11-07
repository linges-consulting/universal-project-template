# Coding conventions

**Purpose:** Define repository-wide implementation and review expectations. **Audience:** Contributors and reviewers. **Maintenance:** Update when conventions or automated enforcement change; prefer formatter/linter configuration over prose. **Related:** `setup.md`, `../architecture/README.md`, `../guides/contributing.md`.

- Follow the selected language's established conventions and the repository's automated tooling.
- Keep modules cohesive, interfaces explicit, and dependencies directional.
- Prefer clear names and small comments that explain why, not what.
- Validate external input and handle errors deliberately; do not log secrets or sensitive payloads.
- Add proportionate tests for behavior and regressions. Keep fixtures minimal and anonymized.
- Preserve compatibility unless a breaking change is approved and documented.
- Do not add dependencies without assessing maintenance, license, security, and operational cost.
- Replace this generic guidance with stack-specific, enforceable rules after the technology is selected.

