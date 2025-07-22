#!/bin/sh

# sudo sed -i \
#   's#deb http://.*/#deb http://mirrors.aliyun.com/#' \
#   /etc/apt/sources.list

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

# mise
sudo apt update -y && sudo apt install -y gpg sudo wget curl
sudo install -dm 755 /etc/apt/keyrings
wget -qO - https://mise.jdx.dev/gpg-key.pub | gpg --dearmor | sudo tee /etc/apt/keyrings/mise-archive-keyring.gpg 1> /dev/null
echo "deb [signed-by=/etc/apt/keyrings/mise-archive-keyring.gpg arch=amd64] https://mise.jdx.dev/deb stable main" | sudo tee /etc/apt/sources.list.d/mise.list
sudo apt update
sudo apt install -y mise
/usr/bin/mise use -g usage

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
