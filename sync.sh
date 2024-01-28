#!/bin/bash
gitCommitAndPush() {
  mode=""
  if [[ $2 ]]; then
    mode="automatically"
  else
    mode="manually"
  fi
  if [[ `git status --porcelain` ]]; then
    git add .
    git commit -m "synced changes $mode at $(date +%F_%R)"
    git push
  else
    echo "No changes to sync in $1"
  fi
}

echo "SYNCING NOTES..."
cd ~/notes

gitCommitAndPush notes $1

echo "SYNCING SCRIPTS..."
cd ~/scripts

gitCommitAndPush scripts $1

