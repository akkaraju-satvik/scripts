#!/bin/bash

if [[ $(docker ps --format '{{.Names}}') ]]; then
  docker stop $(docker ps --format '{{.Names}}')
else
  echo "No containers running at the moment!"
fi

if [[ $1 ]]; then
  case $1 in
    -r)
      docker rm $(docker ps -a --format '{{.Names}}')
      ;;
  esac
fi
