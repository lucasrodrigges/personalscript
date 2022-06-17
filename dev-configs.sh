#!/usr/bin/env bash

## Removing occasional crashes from apt ##
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock
zinit self-update

# Installing Development Softwares
sudo apt install npm -y
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash && source ~/.profile  
exec zsh
nvm install --lts
node -v && nvm -v && npm -v && git --version
