#!/usr/bin/env bash

## Removing occasional crashes from apt ##
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

## Installing Git ##
sudo apt install git -y

## Installing TpLink T2U Nano Driver for Ubuntu"
git clone -b v5.6.4.2 https://github.com/aircrack-ng/rtl8812au.git
cd rtl*
sudo apt-get update
sudo apt-get install build-essential libelf-dev linux-headers-`uname -r` -y
sudo apt-get install dkms -y
sudo make dkms_install
