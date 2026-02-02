export ZSH=~/.zsh/ohmyzsh

#ZSH_THEME="ys"
ZSH_THEME="bira"

plugins=(git vi-mode)
plugins+=(fzf)
plugins+=(mise direnv)
plugins+=(node npm)
plugins+=(python pip uv conda-env)
plugins+=(ruby gem bundler)
plugins+=(golang rust)
plugins+=(docker docker-compose)

source $ZSH/oh-my-zsh.sh
