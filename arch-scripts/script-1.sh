#!/bin/bash

trap 'echo "Script interrompido pelo usuário." && exit 1' INT TERM EXIT

echo "Pressione a tecla 'Esc' a qualquer momento para cancelar o script."

set -e

sudo pacman -Syu

sudo pacman -S firefox --noconfirm
sudo pacman -S git --noconfirm
sudo pacman -S curl --noconfirm
sudo pacman -S wget --noconfirm
sudo pacman -S neofetch --noconfirm
sudo pacman -S htop --noconfirm
sudo pacman -S zsh --noconfirm
sudo pacman -S dbeaver --noconfirm
sudo pacman -S pipewire-jack pipewire-alsa pipewire-pulse qjackctl --noconfirm
sudo pacman -Sy gnome-browser-connector --noconfirm
sudo pacman -S man --noconfirm
sudo pacman -S dmidecode --noconfirm
sudo pacman -S obs-studio --noconfirm
sudo pacman -S gnome-boxes --noconfirm 
sudo pacman -S qbittorrent --noconfirm 
sudo pacman -S docker docker-composer --noconfirm
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd ..
sudo rm -rf yay/

yay -Syu --noconfirm

yay -S google-chrome --noconfirm
yay -S visual-studio-code-bin --noconfirm
yay -S vlc --noconfirm
yay -S discord --noconfirm
yay -S ardour --noconfirm
yay -S postman --noconfirm
yay -S spotify --noconfirm
yay -S spotify-adblock --noconfirm
yay -S docker-desktop --noconfirm

flatpak install flathub com.leinardi.gst -y
flatpak install flathub org.gnome.DejaDup -y

# sudo chsh -s $(which zsh)
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
