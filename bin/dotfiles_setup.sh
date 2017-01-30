#!/bin/bash

DOTFILES=~/dotfiles

ln -s $DOTFILES/.vim/vimrc ~/.vimrc
ln -s $DOTFILES/.vim ~/.vim
ln -s $DOTFILES/.zshrc ~/.zshrc

ln -s $DOTFILES/bin ~/bin

mkdir -p ~/tmp

git submodule update --init
