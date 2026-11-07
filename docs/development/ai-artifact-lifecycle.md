# AI artifact lifecycle

**Purpose:** Keep AI-created material useful, portable, and safe. **Audience:** Contributors using any AI tool. **Maintenance:** Review when collaboration or retention policies change. **Related:** `../../AGENTS.md`, `git-tracking.md`, `../../.ai/shared/agent-workflow.md`.

## Lifecycle

1. **Temporary:** Put exploration, reasoning notes, transcripts, debug output, and intermediate drafts in ignored `.ai/scratch/`, `.ai/sessions/`, or `local/`.
2. **Shared working context:** After human review for accuracy, sensitivity, and usefulness, distill concise cross-agent orientation into `.ai/shared/`.
3. **Authoritative:** Move approved requirements, architecture, decisions, procedures, and durable knowledge into the owning location under `docs/`; link instead of duplicating.
4. **Completed:** Update authoritative documentation and current state, link issues or pull requests where applicable, preserve meaningful decisions, and remove or archive obsolete plans so competing specifications do not remain active.

## Commit decision

Commit an artifact only when every answer is yes:

- Will another contributor need it after a fresh clone?
- Is it durable, accurate, reviewed, and owned?
- Is `docs/`, source code, or `.ai/shared/` the correct home?
- Is it free of secrets, personal/customer/production data, private conversations, unsafe logs, and licensing problems?
- Does it add knowledge rather than duplicate or conflict with an existing source of truth?

Otherwise keep it local, revise it, or delete it. Never commit raw chain-of-thought or private session transcripts.

## Workflow artifact mapping

| Artifact | Durable owner |
| --- | --- |
| Canonical domain terminology | `GLOSSARY.md` |
| Approved requirements | `docs/requirements/` |
| Architecture and significant decisions | `docs/architecture/` and its `decisions/` directory |
| Project status needed after a fresh clone | `.ai/shared/current-state.md` |
| Specifications and tickets | The tracker configured for the project; when an adapter is enabled, follow `docs/agents/issue-tracker.md` |
| Durable research | The relevant authoritative `docs/` location, or a reviewed selectively tracked artifact when no authoritative home exists |
| Disposable research and plans | Ignored `.ai/research/` and `.ai/plans/` |
| Same-machine continuation | Ignored `.ai/handoffs/` |
| Cross-computer or cross-person continuation | A committed specification, configured tracker, shared current state, or deliberately reviewed and tracked handoff |
| Prototype | A dedicated throwaway workspace or branch linked from its owning issue; preserve only when it remains useful evidence |

An ignored handoff is not portable. Before changing computers, agents, directories, or collaborators, ensure the necessary state exists in Git or the configured tracker.

