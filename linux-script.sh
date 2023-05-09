#!/bin/bash

# Captura o sinal da tecla "Esc" e interrompe o script
trap 'echo "Script interrompido pelo usuário." && exit 1' INT TERM EXIT

# Exibe uma mensagem informando sobre a opção de interromper o script
echo "Pressione a tecla 'Esc' a qualquer momento para cancelar o script."

# Seta a variável de usuário
USER_NAME="$USER"

# Cancela imeadiatamente se um comando sair com um status não zero
set -e

# Remove occasional crashes from apt
sudo rm -f /var/lib/dpkg/lock-frontend
sudo rm -f /var/cache/apt/archives/lock

# Instalando Dialog para criar caixas de diálogo
sudo apt-get update
sudo apt-get install -y dialog

if ! grep -q "flathub" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
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

# Defina a lista de softwares
SOFTWARES=(
  "Google Chrome" "" OFF \
  "Flameshot" "" OFF \
  "Kcolo Chooser" "" OFF \
)

DEV_SOFTWARES=(
  "curl" "" OFF \
  "git" "" OFF \
  "wget" "" OFF \
  "npm" "" OFF \
  "nvm (requer curl instalado)" "" OFF \
)

# Crie uma caixa de diálogo com os programas para o usuário escolher
CHOICES=$(dialog --stdout --checklist 'Selecione os softwares que você deseja instalar:' 0 0 0 "${SOFTWARES[@]}")

# Crie uma caixa de diálogo com os programas de desenvolvimento para o usuário escolher
DEV_CHOICES=$(dialog --stdout --checklist 'Selecione os softwares de desenvolvimento que você deseja instalar:' 0 0 0 "${DEV_SOFTWARES[@]}")

# Instale os softwares selecionados
for CHOICE in $CHOICES; do
    case $CHOICE in
        "Google Chrome") wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo apt install -y ./google-chrome-stable_current_amd64.deb ;;
        "KcoloChooser") sudo apt install -y kcolorchooser ;;
        "Flameshot") sudo apt install -y flameshot ;;
    esac
done

# Instale os softwares de desenvolvimento selecionados
for DEV_CHOICE in $DEV_CHOICES; do
    case $DEV_CHOICE in
        "curl") sudo apt install -y curl ;;
        "git") sudo apt install -y git ;;
        "wget") sudo apt install -y wget ;;
        "npm") sudo apt install -y npm ;;
        "nvm") curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash ;;
    esac
done

#  Reiniciar o bash e verificar se o nvm foi instalado
if which nvm >/dev/null; then
    echo "O NVM foi instalado corretamente."
else
    echo "O NVM não foi instalado."
fi

# Reinicie o sistema para aplicar as mudanças
if dialog --yesno 'A instalação foi concluída. Você deseja reiniciar o sistema agora?' 0 0; then
    sudo reboot
fi
