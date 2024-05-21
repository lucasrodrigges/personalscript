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

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# add plugins
PLUGINS="

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
"
echo "$PLUGINS" >> ~/.zshrc

# add aliases
ALIASES="

alias update='sudo pacman -Syyu --noconfirm &&
sudo pacman -S yay --noconfirm &&
sudo pacman -S git --noconfirm &&
sudo pacman -S curl --noconfirm'

# git
alias clone='git clone'
alias commit='git add . && git commit -m'
alias dev='git checkout dev'
alias push='git push origin'
alias stash='git stash'
alias pull='git pull origin'
alias status='git status'
alias branch='git branch'
alias check='git checkout'
alias checkb='git checkout -b'
alias merge='git checkout main && git merge dev && git push origin main && git checkout dev'

# asdf
alias nodei='asdf install nodejs'
alias nodel='asdf local nodejs'
alias nodeil='asdf install $(cat .tool-versions)'

# npm
alias ni='npm install'
alias ns='npm start'
alias nt='npm test'
alias nb='npm run build'
alias nd='npm run dev'
alias nis='npm install && npm start'
alias nid='npm install && npm run dev'
alias logs='npm run logs'

# docker
alias dstart='sudo systemctl start docker'
alias dres='sudo systemctl restart docker'
alias dstop='sudo systemctl stop docker docker.socket'
alias dup='docker-compose up'
alias dbuild='docker-compose up --build'

# projects
# benvo
alias bvfml='code ~/Documents/Benvo/benvo-family'
alias bvops='code ~/Documents/Benvo/benvo-ops'
alias afront='code ~/Documents/Benvo/afarma-frontend'
alias aback='code ~/Documents/Benvo/afarma-api'
# bfdb
alias bfdbtutor='code ~/Documents/BFDB/bfdb-tutor'
alias bfdbops='code ~/Documents/BFDB/bfdb-ops'
alias bfdbnot='code ~/Documents/BFDB/bfdb-notifications'
alias bfdblp='code ~/Documents/BFDB/bfdb-lp'
alias bfdbcron='code ~/Documents/BFDB/bfdb-cron'
"
echo "$ALIASES" >> ~/.zshrc

# install development softwares
yay -S dbeaver visual-studio-code-bin google-chrome docker docker-compose vlc discord --noconfirm
sudo pacman -Sy gnome-browser-connector