export ZSH=~/.zsh/ohmyzsh

ZSH_THEME="ys"

plugins=(git vi-mode)
plugins+=(fzf)
plugins+=(mise direnv)
plugins+=(node npm)
plugins+=(python pip uv)
plugins+=(ruby gem bundler)
plugins+=(docker docker-compose)

source $ZSH/oh-my-zsh.sh
