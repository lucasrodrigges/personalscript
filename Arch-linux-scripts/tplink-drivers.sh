sudo pacman-mirrors -f 5 && sudo pacman -Syyu

sudo pacman -S $(pacman -Qsq "^linux" | grep "^linux[0-9]*[-rt]*$" | awk '{print $1"-headers"}' ORS=' ')

sudo pacman -S bc dkms git base-devel pamac-cli --needed

pamac build rtl88xxau-aircrack-dkms-git

sudo rfkill unblock all

reboot