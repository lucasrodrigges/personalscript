#!/bin/bash

trap 'echo "Script interrompido pelo usuário." && exit 1' INT TERM EXIT

echo "Pressione a tecla 'Esc' a qualquer momento para cancelar o script."

USER_NAME="$USER"

set -e

sudo rm -f /var/lib/dpkg/lock-frontend
sudo rm -f /var/cache/apt/archives/lock

sudo apt-get update
sudo apt-get install dialog curl wget -y

if ! which flatpak >/dev/null; then
    if dialog --yesno '
        O repositório flatpak não está instalado. Você deseja instalar agora?
        Não instalá-lo pode causar problemas na instalação de alguns softwares.
    ' 0 0; then
        sudo apt install flatpak
        sudo apt install gnome-software-plugin-flatpak
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
        sudo apt update
    fi
fi


SOFTWARES=(
  "Google Chrome" "" OFF \
  "Flameshot" "" OFF \
  "Kcolorchooser" "" OFF \
)

CHOICES=$(dialog --stdout --checklist 'Selecione os softwares que você deseja instalar:' 0 0 0 "${SOFTWARES[@]}")

for CHOICE in $CHOICES; do
    case $CHOICE in
        "Google Chrome") echo "Instalando o Google Chrome" && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i ./google-chrome-stable_current_amd64.deb -y ;;
        "Kcolorchooser") echo "Instalando o Kcolorchooser" && sudo apt install kcolorchooser -y ;;
        "Flameshot") echo "Instalando o Flameshot" && sudo apt install flameshot -y ;;
    esac
done

DEV_SOFTWARES=(
  "git" "" OFF \
  "npm" "" OFF \
  "nvm (requer curl instalado)" "" OFF \
)

DEV_CHOICES=$(dialog --stdout --checklist 'Selecione os softwares de desenvolvimento que você deseja instalar:' 0 0 0 "${DEV_SOFTWARES[@]}")

for DEV_CHOICE in $DEV_CHOICES; do
    case $DEV_CHOICE in
        "git") sudo apt install -y git ;;
        "npm") sudo apt install -y npm ;;
        "nvm") curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash ;;
    esac
done

if which nvm >/dev/null; then
    echo "O NVM foi instalado corretamente."
else
    echo "O NVM não foi instalado."
fi

if dialog --yesno 'A instalação foi concluída. Você deseja reiniciar o sistema agora?' 0 0; then
    sudo reboot
fi
