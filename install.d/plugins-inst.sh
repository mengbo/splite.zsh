#!/bin/sh

mkdir -p ~/.zsh

git clone https://github.com/zsh-users/zsh-completions \
  ~/.zsh/zsh-completions

git clone https://github.com/ohmyzsh/ohmyzsh.git \
	~/.zsh/ohmyzsh

git clone https://github.com/Aloxaf/fzf-tab.git \
  ~/.zsh/fzf-tab

git clone https://github.com/zsh-users/zsh-autosuggestions \
  ~/.zsh/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
  ~/.zsh/zsh-syntax-highlighting
