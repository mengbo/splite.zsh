if [ -d ~/.zshrc.d ]; then
  for i in ~/.zshrc.d/*.zsh; do
    if [ -r $i ]; then
      source $i
    fi
  done
  unset i
fi
