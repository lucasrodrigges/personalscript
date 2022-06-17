#!/usr/bin/env bash

## Removing occasional crashes from apt ##
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

# Installing curl
sudo apt install curl 

# Installing ZSH
sudo apt install zsh -y
