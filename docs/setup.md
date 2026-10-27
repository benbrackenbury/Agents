# Setup

Clone this repo (ssh not https) into `~/.agents`

## Update

From an existing clone with a clean working tree:

```sh
./scripts/update.sh
```

Pulls the latest and re-rsyncs `skills/` into `~/.cursor/skills/`.

## Skills

### Cursor

Rsync `skills/` into `~/.cursor/skills/`:

```sh
rsync -a --delete skills/ ~/.cursor/skills/
```

`./scripts/update.sh` does this after a pull. If `~/.cursor/skills` is a
symlink, remove it first so rsync writes a real directory.

### Other agents

Symlink the `skills` directory for other agents, e.g. `~/.grok/skills`,
`~/.config/opencode/skills`, `~/.claude/skills`.

If this repo has already been set up on the machine, ignore the symlinks
that have already been created, skip ones that aren't needed
(eg if I don't have Claude installed don't bother with the claude symlink).

## Computers

If the hostname of this machine isn't one of the hosnames listed in
`COMPUTERS.md`, create a local file as described in the computers file and fill
out a row with the system info of this machine as best as you can.
