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

# Defina a lista de softwares
SOFTWARES="Google Chrome off
Flameshot off"

# Crie uma caixa de diálogo com os programas para o usuário escolher
CHOICES=$(dialog --stdout --checklist 'Selecione os softwares que você deseja instalar:' 0 0 0 $SOFTWARES)

# Instale os softwares selecionados
for CHOICE in $CHOICES; do
    case $CHOICE in
        "Google Chrome") wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list && sudo apt update && sudo apt install -y google-chrome-stable ;;
        "Flameshot") sudo apt install -y flameshot ;;
    esac
done

# Reinicie o sistema para aplicar as mudanças
if dialog --yesno 'A instalação foi concluída. Você deseja reiniciar o sistema agora?' 0 0; then
    sudo reboot
fi
```