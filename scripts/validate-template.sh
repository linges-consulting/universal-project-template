#!/bin/sh
set -eu

repo_root=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
cd "$repo_root"

required_files='README.md
AGENTS.md
GLOSSARY.md
.gitignore
.editorconfig
.ai/shared/project-context.md
.ai/shared/current-state.md
.ai/shared/agent-workflow.md
docs/requirements/README.md
docs/architecture/README.md
docs/architecture/decisions/template.md
docs/development/setup.md
docs/development/coding-conventions.md
docs/development/guardrails.md
docs/development/git-tracking.md
docs/development/ai-artifact-lifecycle.md
docs/design/README.md
docs/deployment/README.md
docs/api/README.md
docs/guides/contributing.md
docs/guides/matt-pocock-skills.md
scripts/init-project.sh'

printf '%s\n' "$required_files" | while IFS= read -r path; do
  if [ ! -f "$path" ]; then
    printf 'Missing required file: %s\n' "$path" >&2
    exit 1
  fi
done

./scripts/init-project.sh >/dev/null

scratch_probe=.ai/scratch/.ignore-probe
local_probe=local/logs/.ignore-probe
shared_probe=.ai/shared/project-context.md
: > "$scratch_probe"
: > "$local_probe"
trap 'rm -f "$scratch_probe" "$local_probe"' EXIT HUP INT TERM

git check-ignore -q "$scratch_probe" || { printf '%s\n' 'AI scratch is not ignored.' >&2; exit 1; }
git check-ignore -q "$local_probe" || { printf '%s\n' 'Local files are not ignored.' >&2; exit 1; }
if git check-ignore -q --no-index "$shared_probe"; then
  printf '%s\n' 'Shared AI context is unexpectedly ignored.' >&2
  exit 1
fi

if find . -path './.git' -prune -o -type f \( -name '.env' -o -name '*.pem' -o -name '*.key' \) -print | grep -q .; then
  printf '%s\n' 'Potential secret file found; inspect before committing.' >&2
  exit 1
fi

printf '%s\n' 'Template validation passed.'

