[[ -e /opt/homebrew/bin/brew ]] || return

eval "$(/opt/homebrew/bin/brew shellenv)"

#BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
#BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
#export HOMEBREW_BOTTLE_DOMAIN=$BOTTLE_DOMAIN
export HOMEBREW_NO_AUTO_UPDATE=1

# https://docs.brew.sh/Shell-Completion
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

