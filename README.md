# Personal Script for Mac and Linux

These scripts will install my day-to-day applications. If you got here, check the `script.sh` related to your OS and motify it according your usage.


## Linux (Ubuntu-Based)

This script, in addition to updating the system, will install flatpak support. In the end, it will modify the Ubuntu appearance (if you're using it) and add `gnome-shell-extension`.

<ul>
  <li>Google Chrome</li>
  <li>Phyton</li>
  <li>QJack</li>
  <li>VSCode</li>
  <li>FLameshot</li>
  <li>Sublime Text</li>
  <li>VLC</li>
  <li>Discord</li>
  <li>OBS</li>
  <li>Github Desktop</li>
  <li>Anydesk</li>
  <li>GTKStressTesting</li>
</ul>

### Installing ethernet drivers

```
cd Downloads && 
wget -c https://raw.githubusercontent.com/lucasrodrigges/personalscript/main/internet-drivers.sh && 
sudo chmod +x internet-drivers.sh && sudo ./internet-drivers.sh

```

### Installig softwares

```
cd Downloads && 
wget -c https://raw.githubusercontent.com/lucasrodrigges/personalscript/main/linux-script.sh && 
sudo chmod +x linux-script.sh && sudo ./linux-script.sh

``` 

## Mac (macOS 10.15+)
This script will install brew to get applications, modify security permissions and enable key repeat (like Windows).

<ul>
  <li>Google Chrome</li>
  <li>Firefox</li>
  <li>Whatsapp</li>
  <li>Telegram</li>
  <li>Discord</li>
  <li>Slack</li>
  <li>Zoom</li>
  <li>Sublime Text</li>
  <li>VSCode</li>
  <li>Hackintool</li>
  <li>Git</li>
  <li>Android Studio</li>
  <li>Anydesk</li>
  <li>Balena Etcher</li>
  <li>BlackHole-2ch</li>
  <li>OBS</li>
  <li>Steam</li>
  <li>QBittorrent</li>
  <li>Reaper</li>
  <li>Google Drive</li>
  <li>Stats</li>
  <li>VLC</li>
  <li>Spotify</li>
  <li>Rectangle</li>
  <li>Geekbench</li>
  <li>Android File Transfer</li>
  <li>Notion</li>
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
cd Downloads && 
wget -c https://raw.githubusercontent.com/lucasrodrigges/personalscript/main/mac-script.sh && 
chmod +x mac-script.sh && ./mac-script.sh

```