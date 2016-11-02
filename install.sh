#!/usr/bin/env bash

DIR=$(cd `dirname $0`; pwd)

source $DIR/ohmyz.sh
source $DIR/nvm.sh
#source $DIR/gvm.sh

ln -s $DIR/.vimrc ~/.vimrc
ln -s $DIR/.tumx.conf ~/.tmux.conf

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall! +qall
