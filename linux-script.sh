#!/usr/bin/env bash

## Removing occasional crashes from apt ##
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

## Python ##
sudo apt-get update
sudo apt-get install python3 python3-venv python3-pip

## Google Chrome ##
mkdir /home/$USER/Downloads/Programas
cd /home/$USER/Downloads/Programas 
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 

## Installing Slack (.deb)
# wget -c https://downloads.slack-edge.com/releases/linux/4.26.1/prod/x64/slack-desktop-4.26.1-amd64.deb 

## Installing Zoom
# wget -c https://cdn.zoom.us/prod/5.10.7.3311/zoom_amd64.deb
# sudo dpkg -i *deb

## Installing VSCode ##
# wget -c https://az764295.vo.msecnd.net/stable/30d9c6cd9483b2cc586687151bcbcd635f373630/code_1.68.1-1655263094_amd64.deb && sudo dpkg -i *deb

#Installing Jack ##
# sudo apt install qjackctl -y

## Apt Apps ##
sudo apt install flameshot -y
sudo apt install kcolorchooser -y
# wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
# sudo apt-get install apt-transport-https -y
# echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# sudo apt-get update -y
# sudo apt-get install sublime-text -y

## Repository Softwares ##
sudo apt install flatpak -y
sudo add-apt-repository ppa:flatpak/stable -y
sudo apt update -y
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y 
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo 

## Apps Flatpak ##
flatpak install flathub org.videolan.VLC -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub io.github.shiftey.Desktop
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub com.leinardi.gst -y
flatpak install flathub com.anydesk.Anydesk -y

## Customizing UBUNTU ##
sudo apt-get install chrome-gnome-shell -y
sudo apt install gnome-shell-extensions -y
sudo apt install menulibre -y


echo "All done! Reboot your system."
