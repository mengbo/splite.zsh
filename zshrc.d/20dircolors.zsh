if command -v gdircolors >/dev/null 2>&1; then
  eval "$(gdircolors ~/.dir_colors)"
else
  eval "$(dircolors ~/.dir_colors)"
fi
# fix dircolors for Selenized
export LS_COLORS="$LS_COLORS:ow=1;7;34:st=30;44:su=30;41"
