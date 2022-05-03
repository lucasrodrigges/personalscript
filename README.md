# Personal Script for Mac and Linux

These scripts will install my day-to-day applications. If you got here, check the `script.sh` related to your OS and motify it according your usage.


## Linux (Ubuntu-Based)

This script, in addition to updating the system, will install flatpak support. In the end, it will modify the Ubuntu appearance (if you're using it) and add `gnome-shell-extension`.

| From Flatpak | External Apps       | Apt Apps  |
|------------- | ------------        | --------- |
Spotify        | Google Chrome       | Flameshot |
Discord        | Node.js  (via nvm)  | Git       |
VLC            | npm                 | QJack     |
Telegram       | Lutris              | VSCode    |
Zoom           |                     |           |
Slack
Sublime
GitHub Desktop
OBS
Anydesk



### Install Instructions

At first, install git:
```
sudo apt install git -y
```

Use this:
```
cd Downloads && wget -c https://raw.githubusercontent.com/luucas-r/personal-script/main/linux-script.sh && sudo chmod +x linux-script.sh && sudo ./linux-script.sh
```
### Changing appearence:
```
cd Downloads && wget -c https://raw.githubusercontent.com/luucas-r/personal-script/main/appearence.sh && sudo chmod +x appearence.sh && sudo ./appearence.sh
```
## Mac (macOS 10.15+)
This script will install brew to get applications, modify security permissions and enable key repeat (like Windows).

| From Brew    | External Apps       | 
|------------- | ------------------- |
Google Chrome  | Node.js (from nvm ) |     
Spotify        | npm                 |
Whatsapp
Telegram
Telegram
Zoom
Discord
Slack
Gimp
Reaper
Sublime
VSCode
GitHub Desktop
Hackintool
Anydesk
Steam
OBS
Git
BlackHole 2ch
FlameShot
Balena Etcher
QBittorrent
Stats
Rectangle
Geekbench
Cross Over

### Install Instructions

At first, install brew:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

You will need `wget`:
```
brew install wget
```
### Disabling Security Permissions:
```
sudo spctl --master-disable
```
Now donwload the `script.sh` and run it using:
```
cd Downloads && wget -c https://raw.githubusercontent.com/luucas-r/personal-script/main/mac-script.sh && chmod +x mac-script.sh && ./mac-script.sh
```

