# Personal Script for Mac and Linux

These scripts will install my day-to-day applications. If you got here, check the `script.sh` related to your OS and motify it according your usage.


## Linux (Ubuntu-Based)

This script, in addition to updating the system, will install flatpak support. In the end, it will modify the Ubuntu appearance (if you're using it) and add `gnome-shell-extension`.

<ul style="list-style-type:disc;">
  <li>Google Chrome</li>
  <li>Phyton</li>
  <liv>QJack</liv>
  <liv>VSCode</liv>
  <liv>FLameshot</liv>
  <liv>Sublime Text</liv>
  <liv>VLC</liv>
  <liv>Discord</liv>
  <liv>OBS</liv>
  <liv>Github Desktop</liv>
  <liv>Anydesk</liv>
  <liv>GTKStressTesting</liv>
</ul>

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

<ul style="list-style-type:disc;">
  <li>Google Chrome</li>
  <li>Firefox</li>
  <li>Whatsapp</li>
  <liv>Telegram</liv>
  <liv>Discord</liv>
  <liv>Slack</liv>
  <liv>Zoom</liv>
  <liv>Sublime Text</liv>
  <liv>VSCode</liv>
  <liv>Hackintool</liv>
  <liv>Git</liv>
  <liv>Android Studio</liv>
  <liv>Anydesk</liv>
  <liv>Balena Etcher</liv>
  <liv>BlackHole-2ch</liv>
  <liv>OBS</liv>
  <liv>Steam</liv>
  <liv>QBittorrent</liv>
  <liv>Reaper</liv>
  <liv>Google Drive</liv>
  <liv>Stats</liv>
  <liv>VLC</liv>
  <liv>Spotify</liv>
  <liv>Rectangle</liv>
  <liv>Geekbench</liv>
  <liv>Android File Transfer</liv>
  <liv>Notion</liv>
</ul>  










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

