#!/bin/bash
gitCommitAndPush() {
  if [[ `git status --porcelain` ]]; then
    git add .
    git commit -m "synced changes at $(date +%F_%R)"
    git push
  fi
}

echo "SYNCING NOTES..."
cd ~/notes

gitCommitAndPush

echo "SYNCING SCRIPTS..."
cd ~/scripts

gitCommitAndPush


