#!/bin/bash

if [[ $(docker ps --format '{{.Names}}') ]]; then
  echo "Stopping containers..."
  docker stop $(docker ps --format '{{.Names}}')
else
  if [[ ! $1 ]]; then
    echo "No containers running at the moment!"
  fi
fi

if [[ $1 ]]; then
  case $1 in
    -r)
      echo "Removing containers..."
      docker rm $(docker ps -a --format '{{.Names}}')
      ;;
  esac
fi
