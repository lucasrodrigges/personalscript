# Captura o sinal da tecla "Esc" e interrompe o script
trap 'echo "Script interrompido pelo usuário." && exit 1' INT TERM EXIT

# Exibe uma mensagem informando sobre a opção de interromper o script
echo "Pressione a tecla 'Esc' a qualquer momento para cancelar o script."

#!/usr/bin/env bash

# Set user variable
USER_NAME="$USER"

# Exit immediately if a command exits with a non-zero status
set -e

# Remove occasional crashes from apt
sudo rm -f /var/lib/dpkg/lock-frontend
sudo rm -f /var/cache/apt/archives/lock

# Add Google Chrome repository key
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# Add Google Chrome repository to system
echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list

# Update apt package list
sudo apt update

# Install Google Chrome
sudo apt install -y google-chrome-stable

# Install Jack
sudo apt install -y qjackctl

# Install apt applications
sudo apt install -y flameshot kcolorchooser

# Install Flatpak (if not installed)
if ! command -v flatpak &> /dev/null; then
    sudo apt install -y flatpak
fi

# Add Flatpak repository and update package list
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo apt update

# Install Flatpak applications
flatpak install -y flathub com.visualstudio.code com.getpostman.Postman rest.insomnia.Insomnia io.dbeaver.DBeaverCommunity us.zoom.Zoom com.discordapp.Discord com.slack.Slack io.github.shiftey.Desktop com.obsproject.Studio com.leinardi.gst org.videolan.VLC

# Install Chrome Gnome Shell and Gnome Shell Extensions
sudo apt install -y chrome-gnome-shell gnome-shell-extensions

# Prompt user to reboot system
echo "All done! Please reboot your system to apply changes."
