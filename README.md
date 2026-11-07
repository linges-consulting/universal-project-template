# [PROJECT_NAME]

> [ONE_SENTENCE_PROJECT_DESCRIPTION]

This repository is a technology-agnostic starting point for applications, APIs, services, automation, mobile and desktop software, and multi-application repositories. Replace bracketed placeholders as the project becomes known; do not invent facts.

## Start here

1. Run `./scripts/init-project.sh` to create local-only working directories.
2. Replace the project name and description above.
3. Define project terminology in `GLOSSARY.md`, complete `.ai/shared/project-context.md`, and set an initial verified status in `.ai/shared/current-state.md`.
4. Capture initial requirements and architecture in `docs/`.
5. Initialize the chosen application or service under `src/app/`.
6. Add a safe `.env.example` if local configuration is required; keep real values outside Git.
7. Run `./scripts/validate-template.sh`, inspect `git status`, and make the initial commit.

No language, framework, database, package manager, or cloud provider is preselected. Once selected, document exact setup and validation commands in `docs/development/setup.md`.

## Repository map

| Path | Responsibility | Git policy | Maintainer |
| --- | --- | --- | --- |
| `src/` | Application code, tests, and stack-specific configuration | Track | Application owners |
| `docs/` | Reviewed requirements, architecture, operations, and guides | Track; authoritative | Relevant technical/product owners |
| `docs/design/` | UI principles, tokens, components, accessibility, and design governance when applicable | Track; authoritative for design intent | Design and frontend owners |
| `GLOSSARY.md` | Canonical project and domain terminology | Track; authoritative for terminology | Domain and product owners |
| `.ai/shared/` | Concise cross-agent orientation and workflow | Track after review | Project team |
| `.ai/plans/`, `.ai/handoffs/`, `.ai/research/` | Working AI artifacts | Ignored by default; selectively force-add only after review | Artifact author/reviewer |
| `.ai/sessions/`, `.ai/scratch/` | Transcripts and disposable work | Never track | Local user |
| `reference/` | Approved designs, anonymized samples, integration examples, legacy references | Selectively track | Relevant domain owner |
| `local/` | Backups, databases, exports, logs, temporary data | Never track | Local user |
| `scripts/` | Reusable, safe automation | Track | Engineering team |
| `.github/workflows/` | Real CI/CD workflows once a stack is selected | Track | Engineering/operations |

## Documentation conventions

`docs/` is the durable source of truth. Requirements explain what and why; architecture explains system shape and constraints; ADRs record significant decisions; development and deployment documents explain repeatable procedures. Each template states its audience and maintenance duty. Avoid copying the same facts into several files: link to the owner document instead.

See `docs/guides/contributing.md`, `docs/development/guardrails.md`, `docs/development/git-tracking.md`, and `docs/development/ai-artifact-lifecycle.md`. Projects with a user interface also maintain `docs/design/README.md`.

Optional workflow integrations may add repository-local configuration under `docs/agents/`. These files configure external skills or issue-tracker workflows; they do not replace the authoritative project documents above. For Matt Pocock's optional skills flow, see `docs/guides/matt-pocock-skills.md`.

## AI-assisted development

Every coding agent starts with `AGENTS.md`, `GLOSSARY.md`, and the three tracked files under `.ai/shared/`. Shared context must remain concise, reviewed, non-sensitive, and verifiable. Private chat history, local agent databases, ignored artifacts, secrets, installed tools, and uncommitted work do not travel with Git and must be restored separately through approved secret management, backups, and documented setup.

## Adding applications or services

Keep a single product at `src/app/`; no restructuring is needed merely because it grows. When independently deployable applications genuinely emerge, move toward `src/apps/<name>/` and `src/services/<name>/` (or one documented convention), keeping shared libraries in a clearly named location such as `src/shared/`. Record the repository-level convention in the architecture overview before migrating existing paths.

## Git policy quick reference

Track source, tests, reviewed documentation, safe configuration examples, dependency manifests and lockfiles, reusable scripts, and functional CI/CD. Ignore generated output, installed dependencies, caches, secrets, local databases, logs, backups, and temporary AI work. `.gitignore` reduces accidents but is not a security boundary; use review, protected branches, and secret scanning.

Useful checks:

```sh
git check-ignore -v .ai/scratch/example.txt local/logs/example.log
git check-ignore .ai/shared/project-context.md
git status --ignored
```

If a file was already committed, ignoring it does not untrack it. After confirming the target, use `git rm --cached <path>`, commit that removal, and rotate any exposed secret. Removing a current file does not erase Git history; follow an approved history-rewrite and credential-rotation procedure when necessary.

## Contributing

Read `AGENTS.md` and `docs/guides/contributing.md`. Base changes on documented requirements, keep commits reviewable, validate proportionately, update the owning documentation, and never include sensitive or machine-local data.

