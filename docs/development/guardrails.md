# Engineering and agent guardrails

**Purpose:** State the required safe behavior for human and AI-assisted changes. **Audience:** All contributors. **Maintenance:** Project owners refine these rules as risks and conventions become known. Exceptions require explicit review and a durable record where future contributors will find it. **Related:** `../../AGENTS.md`, `coding-conventions.md`, `../design/README.md`, `git-tracking.md`.

## Work from evidence

- Implement behavior supported by an approved requirement, issue, or explicit user decision. Surface missing or conflicting authority before making a consequential assumption.
- Verify architecture facts, project status, API behavior, and validation results against their authoritative sources.
- Report commands and checks exactly as observed. Never claim a test, review, migration, deployment, or command succeeded when it was not performed successfully.

## Preserve project coherence

- Reuse the established language, abstractions, interfaces, components, and design system before adding another.
- Assess fit, maintenance, license, security, and operational impact before proposing a language, framework, service, dependency, state library, styling system, build tool, or hosting dependency.
- Use the authoritative configuration and design-token sources rather than hard-coding owned values. Propose a missing token or configuration key for review.
- Keep each durable fact in one authoritative location. Update or supersede the owner document so conflicting specifications do not remain active.
- Preserve public interfaces, persisted data, compatibility guarantees, deployment behavior, and user-visible semantics unless an approved change explicitly alters them.

## Maintain safety and quality

- Preserve authentication, authorization, validation, encryption, privacy, accessibility, audit, error handling, tests, and quality gates. Changes to these controls require explicit review.
- Use synthetic or properly anonymized fixtures. Never commit secrets, credentials, production/customer data, sensitive reference material, private conversations, raw AI reasoning, or machine-local state.
- Keep generated output and temporary debugging artifacts in their ignored locations unless a specific reviewed artifact is intentionally selected for version control.
- Protect unrelated work. Destructive Git, filesystem, database, infrastructure, migration, or deployment operations require explicit authorization, verified targets, and a recovery plan.

## When a rule blocks the task

Surface the conflict, evidence, and smallest safe options. Ask for the missing decision or authority rather than silently bypassing a control. Keep an approved exception narrow and record its rationale, owner, scope, review date, and follow-up obligation in the appropriate requirement, ADR, issue, or operating document.

