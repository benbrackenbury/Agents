#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root"

dirty="$(git status --porcelain | grep -vF '.cursor/skills' || true)"
if [[ -n "$dirty" ]]; then
  echo "working tree is not clean; aborting" >&2
  git status --short >&2
  exit 1
fi

git pull --ff-only

if [[ -L .cursor/skills ]]; then
  rm .cursor/skills
fi
rsync -a --delete skills/ .cursor/skills/
