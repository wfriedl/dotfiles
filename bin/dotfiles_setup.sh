#!/bin/sh

DOTFILES=~/dofiles

ln -s $DOTFILES/.vim/vimrc ~/.vimrc
ln -s $DOTFILES/.zshrc ~/.zshrc

mkdir -p ~/tmp

git submodule update --init
