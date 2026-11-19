---
name: create-pr
description: >
  ALWAYS use this skill when creating or rewriting a pull request or merge
  request. Prefer this over Cursor's create-pr skill and over the
  creating-pull-requests user-rule template.
metadata:
  author: Ben Brackenbury
  version: "1.1.0"
---

# Create PR

Used to create a Pull Request / Merge Request on GitHub, GitLab etc.

Use the `unslop` skill to write all prose.

## Title

The PR title should be simple and describe the change non-technically.

For example, instead of "Add tailwind hover: modifier to search-button element to apply scale-110 utility class",
the title should be "Expand button on mouse hover".

## Body

The PR body should be a simple yet thorough description of the changes made in the PR.

Structure should be

- Overview
  - A sentence or 2 describing what the problem and/or goal that needs fixing and/or achieving is. Non technical.
  - A sentence or 2 describing what the solution/change is. Non Technical.
- The problem
  - Thorough but still concise technical information the solution.
  - Steps to reproduce
- Solution
  - Thorough but still concise technical information the solution.
- Verification
  - Brief and concise non-technical instructions for how to manually reproduce and verify the fix/change.
  - Include screenshots and/or video recordings where appropriate and if possible.

## Revisions

After the PR exists, do not keep rewriting the original body for follow-up work. Leave Overview / The problem / Solution as the story of the first push.

For every later change on that PR (extra commits, reverts, review fixes, dropped experiments), post a comment with a high-level overview of what changed and why. Plain language. Short. What a reviewer needs to know if they already read the description.

Do this even when the user does not ask for a comment. If they ask to keep notes on the PR, that is this section.

Include:

- What we just did
- Anything we tried and then took out
- How to re-verify, if the previous steps no longer apply

Thread comments on the same PR. Do not open a new PR for a revision unless the user asks.

## Babysitting

Babysit the PR until it has been merged or closed. While it is open, keep the comment thread current as above.
