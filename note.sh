#!/bin/bash

if [[ $1 ]]; then
  vim ~/notes/$1.txt
else
  echo "Note name not provided"
  read -p "Enter note name: " notename
  if [[ $notename ]]; then
    vim ~/notes/$notename.txt
  else
    notename=$(date +%F_%R)
    echo "No name provided, defaulting to $notename"
    vim ~/notes/$notename.txt
  fi
fi
