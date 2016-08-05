#!/usr/bin/env bash

DIR=$(cd `dirname $0`; pwd)

ln -s $DIR/.vimrc ~/.vimrc
ln -s $DIR/.tumx.conf ~/.tmux.conf

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall! +qall
