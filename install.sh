#!/bin/bash

echo '
 ____
|  _ \ __ _  ___ _ __ ___   __ _ _ __
| |_) / _` |/ __| '_ ` _ \ / _` | '_ \
|  __/ (_| | (__| | | | | | (_| | | | |
|_|   \__,_|\___|_| |_| |_|\__,_|_| |_|
'
sudo pacman -Syu --noconfirm

sudo chdmod +x ./packages/*.sh

source ./packages/pacman.sh
source ./packages/yay.sh

# sudo groupadd docker
# sudo usermod -aG docker $USER
# newgrp docker
# docker run hello-world

flatpak install flathub com.leinardi.gst -y
flatpak install flathub org.gnome.DejaDup -y

# sudo chsh -s $(which zsh)
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
