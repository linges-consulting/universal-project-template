# Git tracking policy

**Purpose:** Define what the repository preserves and what remains local. **Audience:** All contributors. **Maintenance:** Review when tools, generated artifacts, compliance needs, or repository layout change. **Related:** `../../.gitignore`, `ai-artifact-lifecycle.md`, `../guides/contributing.md`.

## Track

Source and tests; reviewed documentation and ADRs; `.ai/shared/`; safe configuration examples; reusable scripts; functional CI/CD; and dependency manifests and lockfiles when a stack uses them.

## Ignore

Secrets and credentials; production/customer data; local databases, dumps, backups, logs, exports, caches, installed dependencies, build output, editor state, temporary AI artifacts, transcripts, and machine-local agent state.

## Select deliberately

Plans, prompts, handoffs, research, approved sample data, designs, integration examples, and legacy references require review for durability, accuracy, licensing, privacy, and sensitivity. AI working directories are ignored by default; reviewed exceptions outside `.ai/shared/` require an explicit `git add -f <exact-path>` and reviewer agreement.

## Verify

```sh
git check-ignore -v .ai/scratch/probe local/logs/probe
git check-ignore .ai/shared/project-context.md
git status --ignored
```

The shared-context command should return no output and a nonzero status; the ignored probes should name `.gitignore` rules. The repository validation script automates these assertions with temporary files.

For already tracked files, inspect the exact target, then run `git rm --cached <path>` and commit. Rotate exposed credentials immediately. Because `.gitignore` is not access control and does not clean history, enable repository secret scanning, dependency scanning, protected branches, required review, and least-privilege CI credentials on the chosen hosting platform.

