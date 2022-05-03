#!/usr/bin/env bash

sudo apt install gnome-tweak-tool
mkdir .themes
cd .themes/
git clone https://github.com/vinceliuice/Colloid-gtk-theme.git
cd Colloid-gtk-theme/
./install.sh
