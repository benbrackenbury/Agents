# Setup

Clone this repo (ssh not https) into `~/.agents`

## Skills

Symlink the `skills` directory for other agents

eg `~/.cursor/skills`, `~/.grok/skills`, `~/claude/skills`

If this repo has already been set up on the machine, ignore the symlinks
that have already been created, delete/ignore nes that aren't needed
(eg if I don't have Claude installed don't bother with the claude symlink etc).

Cursor Cloud Agents and the `/` skill picker load project skills from
`.cursor/skills/` in this repo, which points at `skills/`. You do not need
the home-directory symlink for that.

## Computers

If the hostname of this machine isn't one of the hosnames listed in
`COMPUTERS.md`, create a local file as described in the computers file and fill
out a row with the system info of this machine as best as you can.
