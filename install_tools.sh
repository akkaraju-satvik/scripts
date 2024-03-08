#!/bin/bash

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install node
nvm use node

# NODE
sudo apt install npm
npm install -g tsc @angular/cli nodemon dotenv

# GOLANG
curl https://dl.google.com/go/go1.21.6.linux-amd64.tar.gz -o ~/go.tar.gz
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf ~/go.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version

# ANSIBLE
pipx install --include-deps ansible

# RUST
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"

# GET ALL PERSONAL REPOS
git clone git@github.com:akkaraju-satvik/notes.git
git clone git@github.com:akkaraju-satvik/scripts.git
git clone git@github.com:akkaraju-satvik/dotfiles.git

