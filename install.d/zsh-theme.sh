#!/bin/sh

SOURCE="$HOME/.zsh/ohmyzsh/themes/bira.zsh-theme"
DEST="$HOME/.zsh/ohmyzsh/custom/themes/mengbo.zsh-theme"

mkdir -p "$(dirname "$DEST")"

awk '
/^local current_dir=/ {
    print
    print "local time_prompt=\"%{$reset_color%}[%*]%{$reset_color%} \""
    next
}
/^PROMPT="╭─/ {
    sub(/\$\{kube_prompt\}/, "${kube_prompt}${time_prompt}")
    print
    next
}
{ print }
' "$SOURCE" > "$DEST"
