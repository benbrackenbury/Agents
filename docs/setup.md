# Setup

Clone this repo (ssh not https) into `~/.agents`

## Skills

### Cursor

Cloud agents cannot follow a symlink. Copy `skills/` into the project-level
Cursor skills dir with rsync, then commit the copies:

```sh
rm -f .cursor/skills   # only if it is still a symlink
rsync -a --delete skills/ .cursor/skills/
```

Re-run the rsync (and commit) after adding or changing skills. Cursor Cloud
Agents and the `/` skill picker load from `.cursor/skills/` in this repo. You
do not need a `~/.cursor/skills` symlink.

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
