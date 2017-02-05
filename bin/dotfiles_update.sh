#!/bin/sh

DOTFILES=~/dotfiles

cd $DOTFILES
git submodule foreach git pull origin master
