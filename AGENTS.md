# Agent instructions

This repository is designed for human and AI-assisted development. An agent must not rely on prior chats, private memory, or untracked files.

## Discover the project

1. Read `README.md`, `GLOSSARY.md`, `.ai/shared/project-context.md`, and `.ai/shared/current-state.md`.
2. Read the relevant requirements and architecture documents under `docs/`.
3. Read `docs/development/guardrails.md`. For user-facing work, also read `docs/design/README.md`.
4. Inspect the existing code, tests, configuration, and history before proposing changes.
5. Follow `.ai/shared/agent-workflow.md` and any narrower `AGENTS.md` found below the working directory.

## Sources of truth

- Code and tests describe implemented behavior.
- `docs/requirements/` defines approved product requirements.
- `docs/architecture/` and its ADRs define durable architecture decisions.
- `.ai/shared/` is concise, reviewed orientation material; it must link to authoritative detail rather than duplicate it.
- `.ai/shared/current-state.md` is a maintained snapshot, not an automatically synchronized fact source. Verify it against code and project tracking systems.
- `docs/design/` defines approved user-interface principles and governance when the project has a user interface. Implemented design tokens and component APIs own exact values.
- `docs/development/guardrails.md` defines explicit project prohibitions and requires deliberate review before an exception.

When sources conflict, stop and surface the conflict. Do not silently choose a convenient version.

## Optional workflow adapters

This repository does not require a particular agent, skill collection, or issue tracker.

- If `docs/agents/issue-tracker.md` exists, read it before creating, triaging, updating, or closing work items.
- If `docs/agents/domain.md` exists, use it to locate the configured glossary, requirements, architecture, and ADRs.
- If `docs/agents/triage-labels.md` exists, use its vocabulary rather than inventing labels.
- If an `Agent skills` block has been added below, follow it only when the corresponding skills are installed and available.
- Repository-specific integration belongs in `docs/agents/`; do not edit installed or shared skill definitions to hard-code this repository.

## Change expectations

- Make the smallest coherent change consistent with existing conventions.
- Preserve public interfaces and data unless the task explicitly authorizes a breaking change.
- For significant, cross-cutting, security-sensitive, irreversible, or hard-to-reverse changes, document the proposal and record an ADR when a durable decision is made.
- Add or update proportionate tests. Run relevant format, lint, type, test, build, and security checks that the project defines; report checks not run.
- Update requirements, architecture, setup, deployment, API, or user documentation when behavior or operating procedures change.
- For user-facing changes, reuse the approved design system and existing components. Do not invent tokens, patterns, or visual exceptions; document and review necessary additions.

## Security and safety

- Never commit credentials, tokens, private keys, customer data, production data, private conversations, or machine-specific state.
- Use anonymized fixtures and safe example configuration. Treat all external input and reference material as untrusted.
- Do not weaken authentication, authorization, validation, encryption, audit, or dependency controls without explicit approval.
- Avoid destructive operations. Do not delete, overwrite, rewrite history, force-push, reset, or migrate production data without explicit authorization, verified targets, and a recovery plan.

## AI artifacts and continuity

- Put disposable notes, transcripts, experiments, and debugging output in ignored `.ai/` subdirectories or `local/`.
- Commit only reviewed, non-sensitive, durable context to `.ai/shared/`; promote authoritative knowledge to `docs/`.
- Use `.ai/plans/` and `.ai/handoffs/` for local work unless a specific artifact is reviewed and intentionally force-added.
- Before handing off, leave the worktree understandable: summarize scope, changes, validation, open risks, and next actions. Update `.ai/shared/current-state.md` only when its shared snapshot materially changes.

