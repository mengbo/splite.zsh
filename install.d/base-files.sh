#!/bin/sh

cp ./zshrc ~/.zshrc

mkdir -p ~/.zshrc.d
cp ./zshrc.d/* ~/.zshrc.d/

# ~/bin
mkdir -p ~/.local/bin
[ -e ~/bin ] || ln -sf ~/.local/bin ~/bin

# site functions fpath
mkdir -p ~/.local/share/zsh/site-functions

# profile.d
mkdir -p ~/.profile.d
