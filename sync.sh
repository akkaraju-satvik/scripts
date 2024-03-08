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
    echo "Pushing any unpushed commits..."
    git push
  fi
}

echo "SYNCING NOTES..."
cd ~/notes

ansible-vault encrypt *.txt --vault-pass-file ~/.ansible-pass-file
gitCommitAndPush notes $1
ansible-vault decrypt *.txt --vault-pass-file ~/.ansible-pass-file

echo "SYNCING SCRIPTS..."
cd ~/scripts

gitCommitAndPush scripts $1

echo "SYNCING DOTFILES..."
cp /home/satvik/.bashrc /home/satvik/dotfiles/.bashrc && cp /home/satvik/.vimrc /home/satvik/dotfiles/.vimrc
cd ~/dotfiles

gitCommitAndPush dotfiles $1

