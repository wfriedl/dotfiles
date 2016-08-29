#!/bin/sh

DOTFILES=~/dofiles

cd $DOTFILES
git submodule foreach git pull origin master
