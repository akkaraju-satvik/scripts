#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

curl https://dl.google.com/go/go1.21.6.linux-amd64.tar.gz -o go.tar.gz
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version
