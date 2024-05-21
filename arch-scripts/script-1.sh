#!/bin/bash

trap 'echo "Script interrompido pelo usuário." && exit 1' INT TERM EXIT

echo "Pressione a tecla 'Esc' a qualquer momento para cancelar o script."

USER_NAME="$USER"

set -e

# sudo rm -f /var/lib/dpkg/lock-frontend
# sudo rm -f /var/cache/apt/archives/lock

sudo pacman -Syyu --noconfirm
sudo pacman -S yay --noconfirm
sudo pacman -S git --noconfirm
sudo pacman -S curl --noconfirm

# basic softwares
sudo pacman -S zsh git neofetch curl --noconfirm

# configure zsh
# ZSH as default
sudo chsh -s $(which zsh)

# Installing Oh My ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
