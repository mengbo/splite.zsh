[[ -e /opt/homebrew/bin/brew ]] || return

eval "$(/opt/homebrew/bin/brew shellenv)"

SITE="https://mirrors.tuna.tsinghua.edu.cn"
export HOMEBREW_BREW_GIT_REMOTE="${SITE}/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="${SITE}/git/homebrew/homebrew-core.git"
export HOMEBREW_API_DOMAIN="${SITE}/homebrew-bottles/api"
export HOMEBREW_BOTTLE_DOMAIN="${SITE}/homebrew-bottles"
export HOMEBREW_NO_AUTO_UPDATE=1

# https://docs.brew.sh/Shell-Completion
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

