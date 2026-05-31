#!/bin/bash
# Usage: ./push.sh "your commit message"
# Or just: ./push.sh  (uses a default message)

REPO="/Users/adrian/Documents/LLM/Claude/Iceland2026"
MSG="${1:-Update files}"

cd "$REPO"

# Clear any stale lock files
find .git -name "*.lock" -delete 2>/dev/null

git add .
git commit -m "$MSG"
git push
