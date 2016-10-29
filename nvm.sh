#!/usr/bin/env sh
# install nvm

if [[ -d ~/.nvm ]]; then
  echo "nvm was already installed."
else
  echo "install nvm"
  git clone https://github.com/creationix/nvm.git ~/.nvm
  cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
  echo "export NVM_NODEJS_ORG_MIRROR=http://nodejs.org/dist" >> ~/.zshrc
fi

source ~/.nvm/nvm.sh
nvm install stable
