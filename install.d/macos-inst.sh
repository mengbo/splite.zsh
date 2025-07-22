#!/bin/sh

eval "$(/opt/homebrew/bin/brew shellenv)"

# dircololrs
brew install coreutils
GHPROXY="https://gh-proxy.com/"
DCFILE="https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.256dark"
curl -fsSL -o ~/.dir_colors "${GHPROXY}${DCFILE}"

# fzf
brew install fd ripgrep tree
brew install fzf
cp ./fzf-previewer ~/bin/fzf-previewer

# mise
brew install mise

# direnv
brew install direnv

# lsd
brew install font-meslo-lg-nerd-font
brew install lsd
