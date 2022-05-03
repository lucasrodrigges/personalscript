#!/usr/bin/env bash

## Removing occasional crashes from apt ##
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

## Updating System ##
sudo apt update && sudo apt upgrade -y

## Installing Git ##
sudo apt install git -y

## Installing TpLink T2U Nano Driver for Ubuntu"
git clone -b v5.6.4.2 https://github.com/aircrack-ng/rtl8812au.git
cd rtl*
sudo apt-get update
sudo apt-get install build-essential libelf-dev linux-headers-`uname -r` -y
sudo apt-get install dkms -y
sudo make dkms_install

## Python ##
sudo apt-get update
sudo apt-get install python3 python3-venv python3-pip


## Google Chrome ##
mkdir /home/$USER/Downloads/Programas
cd /home/$USER/Downloads/Programas 
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 
sudo dpkg -i *.deb

## Installing VSCode ##
#sudo apt install code

#Installing Jack ##
sudo apt install qjackctl -y

## Apt Apps ##
sudo apt install flameshot
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

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
#gnome-extensions disable ubuntu-dock@ubuntu.com


echo "All done! Reboot your system"
