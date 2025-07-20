#!/bin/sh

[ -x /opt/homebrew/bin/brew ] && return 0 2>/dev/null || exit 0

SITE="https://mirrors.tuna.tsinghua.edu.cn"
export HOMEBREW_BREW_GIT_REMOTE="${SITE}/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="${SITE}/git/homebrew/homebrew-core.git"
export HOMEBREW_API_DOMAIN="${SITE}/homebrew-bottles/api"
export HOMEBREW_BOTTLE_DOMAIN="${SITE}/homebrew-bottles"
export HOMEBREW_NO_AUTO_UPDATE=1

GHPROXY="https://gh-proxy.com/"
INST_URL="https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh"

NONINTERACTIVE=1 \
/bin/bash -c "$(curl -fsSL ${GHPROXY}${INST_URL})"
