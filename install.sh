#!/usr/bin/env bash

DIR=$(cd `dirname $0`; pwd)

source $DIR/ohmyz.sh
source $DIR/nvm.sh
source $DIR/gvm.sh

ln -s $DIR/.vimrc ~/.vimrc
ln -s $DIR/.tumx.conf ~/.tmux.conf

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall! +qall
