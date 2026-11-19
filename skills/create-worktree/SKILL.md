---
name: create-worktree
description: >-
  ALWAYS use this skill when creating a new git worktree, adding a worktree,
  or spinning up an isolated checkout or copy of the repo. Prefer this over a
  bare `git worktree add`.
---

# Create worktree

Create a worktree like Cursor does, then bootstrap it. Do not commit. Do not
push.

## Create

1. Repo name is the git toplevel directory name. Start point is the branch the
   user named, otherwise `HEAD`.
2. Path: `~/.cursor/worktrees/<repo>/<id>` where `<id>` is four random
   lowercase alphanumeric characters. If that path exists, pick another id.
3. Branch: the name the user gave, otherwise `cursor/<id>`.
4. Create:

```bash
git worktree add -b <branch> ~/.cursor/worktrees/<repo>/<id> <start-point>
```

If the branch already exists, omit `-b` and check that branch out in the new
tree.

5. If Cursor (or a previous step) already created the worktree, do not add
   another. Bootstrap that path.

## Bootstrap

Run this **in the new worktree**, after create. Detect from files that exist.
Skip anything that does not apply. Prefer lockfile package managers. Run
independent installs in parallel.

### Node

If `package.json` exists:

- `pnpm-lock.yaml` → `pnpm install`
- `yarn.lock` → `yarn install`
- `bun.lock` / `bun.lockb` → `bun install`
- else → `npm i`

If `.nvmrc` or `.node-version` exists, use that Node version first (`nvm use`
or `fnm use`).

Then, if `package.json` has the script, run the first that exists:

1. `npm run prod` (or `pnpm` / `yarn` / `bun` equivalent)
2. `production`
3. `build`

Do not start `dev` / `watch`.

### PHP

If `composer.json` exists:

```bash
composer install
composer dump-autoload
```

### Other (only if the file exists)

- `Gemfile` → `bundle install`
- `go.mod` → `go mod download`
- `Cargo.toml` → `cargo fetch`
- `pyproject.toml` → `uv sync` if `uv.lock`, else `pip install -e .`
- `requirements.txt` (and no pyproject) → `pip install -r requirements.txt`

Nested packages (theme + plugin, `frontend/` + `api/`): bootstrap each
directory that has its own `package.json` or `composer.json`. Same rules.

## After

- Tell the user the worktree path and branch.
- List what ran and what was skipped.
- If install or build failed, stop and report the error. Do not invent a
  workaround that commits or force-pushes.

Never `git commit`, `git add`, or amend as part of this skill. Bootstrap
must not leave a commit, even if a tool dirties the tree. Warn if the
worktree is dirty after install.
