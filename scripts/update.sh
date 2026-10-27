#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root"

if [[ -n "$(git status --porcelain)" ]]; then
  echo "working tree is not clean; aborting" >&2
  git status --short >&2
  exit 1
fi

git pull --ff-only

if [[ -L .cursor/skills ]]; then
  rm .cursor/skills
fi
rsync -a --delete skills/ .cursor/skills/
