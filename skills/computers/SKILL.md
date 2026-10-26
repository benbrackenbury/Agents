---
name: computers
description: >-
  Loads the inventory of the user's machines from COMPUTERS.md before acting
  on any computer, host, server, or device they mention. Use when they say
  Mac mini, MacBook, MacBook Pro, dev server, server, hostname, Tailscale,
  SSH into, always-on, test on my Mac, develop on my server, run this on
  another machine, which computer, or otherwise refer to their hardware.
---

# Computers

Read `~/.agents/COMPUTERS.md` before answering or acting. That file is the
source of truth for names, hostnames, specs, and which boxes are always on.

Then follow the rules in that file, including the hostname check. If this
machine is not in the inventory, read `~/.agents/COMPUTERS.local.md` instead
when it exists.

Use the matching row for targeting, SSH, arch, RAM, OS, and whether the
machine is expected to be online. Do not invent hosts or skip the file.
