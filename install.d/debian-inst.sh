#!/bin/sh

# sudo sed -i \
#   's#deb http://.*/#deb http://mirrors.aliyun.com/#' \
#   /etc/apt/sources.list

# Disable /etc/xdg/autostart/kali-sync-skel.desktop 
rm -f ~/.zprofile
mkdir -p ~/.config/autostart
cp /etc/xdg/autostart/kali-sync-skel.desktop ~/.config/autostart/
sed -i 's/^Hidden=.*/Hidden=true/; $a Hidden=true' \
  ~/.config/autostart/kali-sync-skel.desktop

# dircololrs
GHPROXY="https://gh-proxy.com/"
DCFILE="https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.256dark"
curl -fsSL -o ~/.dir_colors "${GHPROXY}${DCFILE}"

# fzf
sudo apt install fd-find ripgrep tree
sudo apt install fzf
sudo ln -sf /usr/share/doc/fzf/examples/completion.zsh \
  /usr/share/zsh/vendor-completions/_fzf
cp ./fzf-previewer ~/bin/fzf-previewer

# direnv
sudo apt install direnv

# lsd
VER=v3.4.0
URL="https://github.com/ryanoasis/nerd-fonts/releases/download/${VER}/Meslo.zip"
DEST="$HOME/.local/share/fonts"
mkdir -p "$DEST/nerd-fonts"
wget -qO "$DEST/Meslo.zip" "${URL}" \
  && unzip -q "$DEST/Meslo.zip" -d "$DEST/nerd-fonts" \
  && ln -sf "$DEST" "$HOME/.fonts" \
  && rm "$DEST/Meslo.zip"
# fc-cache -fv
sudo apt install lsd
