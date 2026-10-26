---
name: create-pr
description: Use when creating a pull request or merge request
metadata:
  author: Ben Brackenbury
  version: "1.0.0"
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
- Reproducing
  - Brief and concise non-technical instructions for how to manually reproduce and verify fix/change.

## Babysitting

Babysit the PR until it has been merged or closed
