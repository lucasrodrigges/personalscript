#!/bin/bash

echo '
____                                       _
|  _ \ __ _  ___ _ __ ___   __ _ _ __      / \   _ __  _ __  ___
| |_) / _` |/ __| '_ ` _ \ / _` | '_ \    / _ \ | '_ \| '_ \/ __|
|  __/ (_| | (__| | | | | | (_| | | | |  / ___ \| |_) | |_) \__ \
|_|   \__,_|\___|_| |_| |_|\__,_|_| |_| /_/   \_\ .__/| .__/|___/
                                                |_|   |_|
'




ALL_APPS=("firefox" "git" "curl" "wget" "neofetch" "htop" "zsh" "dbeaver" "pipewire-jack" "pipewire-alsa" "pipewire-pulse" "qjackctl" "gnome-browser-connector" "man" "dmidecode" "obs-studio" "gnome-boxes" "qbittorrent" "flameshot")

APPS_TO_INSTALL=()

for app in "${ALL_APPS[@]}"; do
    if ! pacman -Q "$app" &> /dev/null; then
        APPS_TO_INSTALL+=("$app")
    fi
done

install_apps() {
    for app in "$@"; do
        if [[ " ${APPS_TO_INSTALL[@]} " =~ " ${app} " ]]; then
            echo "Instalando $app..."
            sudo pacman -S "$app" --noconfirm
        else
            echo "$app não está na lista de aplicativos disponíveis."
        fi
    done
}

echo "Escolha os pacotes pacman que deseja instalar:"

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
