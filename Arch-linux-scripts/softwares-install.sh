#Development Softwares
sudo pacman -S nvm
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc
exec zsh
nvm install --lts

sudo pacman -S docker
sudo systemctl disable docker.service
groupadd docker
gpasswd -a rodrigges docker 
sudo pacman -S docker-compose

git clone https://aur.archlinux.org/mysql.git
cd mysql*
makepkg -si
cd ..

git clone https://aur.archlinux.org/sql-workbench.git
cd sql-workbench*
makepkg -si
cd ..

#Others Softwares

git clone https://aur.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code*
makepkg -si
cd ..

git clone https://aur.archlinux.org/google-chrome.git
cd google-chrome*
makepkg -si
cd ..

git clone https://aur.archlinux.org/zoom.git
cd zoom*
makepkg -si
cd ..

git clone https://aur.archlinux.org/slack-desktop.git
cd slack-desktop*
makepkg -si
cd ..

#Others Softwares
flatpak install flathub org.videolan.VLC -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub io.github.shiftey.Desktop
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub com.leinardi.gst -y
flatpak install flathub com.anydesk.Anydesk -y
flatpak install flameshot -y