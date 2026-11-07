# Optional Matt Pocock skills integration

**Purpose:** Connect Matt Pocock's optional engineering skills to this repository without making them a template dependency. **Audience:** Maintainers enabling that workflow. **Maintenance:** Review when the installed skills or repository documentation layout changes. **Related:** `../../AGENTS.md`, `../../GLOSSARY.md`, `../development/ai-artifact-lifecycle.md`.

The repository works without these skills. Do not add placeholder tracker configuration when the integration is unused.

## Enable the integration

1. Install the skills using the supported method for the chosen coding agent.
2. Invoke `/setup-matt-pocock-skills` once in the repository before using the engineering flow.
3. Review what setup discovers and confirm the actual issue tracker.
4. Point domain configuration at the existing project sources below; do not create duplicate requirements, glossaries, architecture, or ADR trees.
5. Review the generated `docs/agents/` files and `AGENTS.md` block.
6. Commit reviewed adapter configuration so it travels across computers and agents.
7. Run `./scripts/validate-template.sh` and the project-specific checks.

The setup skill is prompt-driven. Read its proposed changes before approving them. Repository-specific paths belong in `docs/agents/`, not in installed or shared `SKILL.md` files.

## Existing project sources

| Concern | Existing source |
| --- | --- |
| Domain glossary | `GLOSSARY.md` |
| Requirements | `docs/requirements/` |
| Architecture | `docs/architecture/README.md` |
| ADRs | `docs/architecture/decisions/` |
| Current status | `.ai/shared/current-state.md` |
| Development standards | `docs/development/` |
| Design system | `docs/design/README.md` |

The integration will normally create repository-specific configuration such as:

```text
docs/agents/
├── domain.md
├── issue-tracker.md
└── triage-labels.md    # only when the installed workflow uses triage
```

These files configure skill behavior; the project sources in the table remain authoritative.

## Artifact mapping

- Glossary changes update `GLOSSARY.md`.
- Durable architectural decisions use `docs/architecture/decisions/`.
- Approved durable requirements belong in `docs/requirements/`.
- Specifications and tickets use the tracker configured in `docs/agents/issue-tracker.md`.
- Same-machine transient work may use ignored `.ai/` directories.
- Cross-computer work must live in Git or the configured tracker, not only in ignored handoffs.

After setup, use the installed router or individual skills as desired. The universal workflow in `.ai/shared/agent-workflow.md` remains the fallback when those skills are absent.

