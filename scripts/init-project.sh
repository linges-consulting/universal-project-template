#!/bin/sh
set -eu

repo_root=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)

paths='
.ai/plans
.ai/handoffs
.ai/research
.ai/sessions
.ai/scratch
local/backups
local/database
local/exports
local/logs
local/temp
src/app
reference/designs
reference/samples
reference/integrations
reference/legacy
.github/workflows
'

printf '%s\n' "$paths" | while IFS= read -r path; do
  if [ -n "$path" ]; then
    mkdir -p "$repo_root/$path"
  fi
done

printf '%s\n' "Local and working directories are ready."
printf '%s\n' "Next: replace bracketed placeholders, select the stack, initialize src/app, and run scripts/validate-template.sh."

