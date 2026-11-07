# Agent workflow

**Purpose:** Make AI-assisted work repeatable across tools and computers. **Audience:** AI agents and their reviewers. **Maintenance:** Change only when the team changes its working agreement.

Agents must assume that previous conversations, local memory, ignored files, and another machine's worktree are unavailable.

1. **Discover context:** Read `AGENTS.md`, `README.md`, `GLOSSARY.md`, project context, current state, guardrails, any configured `docs/agents/` adapter, and relevant authoritative documents. For user-facing work, read the design documentation. **Complete when** applicable instructions and sources of truth are identified and conflicts or unknowns are listed.
2. **Inspect reality:** Examine source, tests, configuration, history, and existing conventions. Verify status claims rather than trusting summaries. **Complete when** the affected implementation, interfaces, tests, and constraints are understood well enough to bound the change.
3. **Find requirements:** Locate the owning requirement, issue, or acceptance criteria. Surface conflicts or missing authority before making consequential assumptions. **Complete when** the intended outcome and testable acceptance conditions are explicit.
4. **Propose:** Describe intended behavior, affected interfaces, risks, migration needs, and validation. Seek approval when a change is destructive, breaking, security-sensitive, or outside scope. **Complete when** consequential choices and approval needs are resolved or clearly blocked.
5. **Implement:** Make the smallest coherent change. Preserve unrelated work and never insert secrets or private data. **Complete when** the approved behavior is implemented with proportionate tests and no known unrelated changes.
6. **Validate:** Run applicable formatting, linting, typing, tests, builds, and security checks. Add focused tests and report commands and outcomes honestly. **Complete when** every applicable check passed or is explicitly reported as not run with a reason.
7. **Update documentation:** Modify the authoritative owner document when behavior, terminology, setup, operation, interfaces, or constraints change. Avoid duplicate specifications. **Complete when** each durable change has one current authoritative home.
8. **Record decisions:** Add an ADR for significant durable choices and link it from the architecture overview. Do not create ADRs for routine implementation detail. **Complete when** each significant decision is recorded or an ADR is explicitly unnecessary.
9. **Hand off:** Summarize goal, completed changes, files touched, validation, decisions, open risks, and exact next actions. Store same-machine transient handoffs in ignored `.ai/handoffs/`; use a tracker, committed specification, shared state, or selectively committed handoff when portability is required. **Complete when** another contributor can continue using repository and configured tracker state alone.

