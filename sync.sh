#!/bin/bash
gitCommitAndPush() {
  if [[ `git status --porcelain` ]]; then
    git add .
    git commit -m "synced changes at $(date +%F_%R)"
    git push
  else
    echo "No changes to sync in $1"
  fi
}

echo "SYNCING NOTES..."
cd ~/notes

gitCommitAndPush notes

echo "SYNCING SCRIPTS..."
cd ~/scripts

gitCommitAndPush scripts

