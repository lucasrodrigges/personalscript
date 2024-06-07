#!/bin/bash

echo '
__   __               _                    
\ \ / /_ _ _   _     / \   _ __  _ __  ___ 
 \ V / _` | | | |   / _ \ | '_ \| '_ \/ __|
  | | (_| | |_| |  / ___ \| |_) | |_) \__ \
  |_|\__,_|\__, | /_/   \_\ .__/| .__/|___/
           |___/          |_|   |_|        
'




yay_instalation() {
    if command -v yay &>/dev/null; then
        echo "O 'yay' já está instalado em seu sistema."
    else
        read -p "O 'yay' não está instalado. Deseja instalá-lo? (s/n): " response
        if [ "$response" = "n" ]; then
          echo "Você optou por não instalar o 'yay'."
        else
            sudo pacman -S --needed git base-devel --noconfirm &&
            git clone https://aur.archlinux.org/yay-bin.git &&
            cd yay-bin &&
            makepkg -si --noconfirm &&
            cd .. &&
            sudo rm -rf yay-bin/
            yay -Syu --noconfirm

            if [ $? -eq 0 ]; then
                echo "=====> 'yay' instalado com sucesso."
                source ./yay-apps.sh
            else
                echo "Erro ao instalar o 'yay'."
            fi

        fi
    fi
}

yay_instalation

if command -v yay &>/dev/null; then
   ALL_APPS=("google-chrome" "visual-studio-code-bin" "vlc" "discord" "ardour" "postman" "spotify" "spotify-adblock" "docker" "docker-compose" "docker-desktop")

    APPS_TO_INSTALL=()

    for app in "${ALL_APPS[@]}"; do
        if ! yay -Q "$app" &> /dev/null; then
            APPS_TO_INSTALL+=("$app")
        fi
    done

    install_apps() {
        for app in "$@"; do
            if [[ " ${APPS_TO_INSTALL[@]} " =~ " ${app} " ]]; then
                echo "Instalando $app..."
                yay -S "$app" --noconfirm
            else
                echo "$app não está na lista de aplicativos disponíveis."
            fi
        done
    }

    echo "Escolha os pacotes yay que deseja instalar:"

    for ((i=0; i<${#APPS_TO_INSTALL[@]}; i++)); do
        echo "$((i+1)). ${APPS_TO_INSTALL[i]}"
    done

    read -p "Digite os números dos aplicativos, separados por espaço: " numbers_input

    IFS=' ' read -r -a numbers_array <<< "$numbers_input"

    selected_apps=()
    for number in "${numbers_array[@]}"; do
        index=$((number-1))
        if [ $index -ge 0 ] && [ $index -lt ${#APPS_TO_INSTALL[@]} ]; then
            selected_apps+=("${APPS_TO_INSTALL[index]}")
        else
            echo "Número inválido: $number"
        fi
    done

    install_apps "${selected_apps[@]}"
fi

