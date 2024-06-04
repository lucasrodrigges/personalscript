# Personal Script for Mac and Linux

## Linux (Arch-Based)

### Installig softwares

```
cd Downloads && 
wget -c https://raw.githubusercontent.com/lucasrodrigges/personalscript/main/arch-scripts/script-1.sh
wget -c https://raw.githubusercontent.com/lucasrodrigges/personalscript/main/arch-scripts/script-2.sh
sudo chmod +x script-1.sh && ./script-1.sh

``` 

Reboot, then:

``` 
sudo chmod +x script-2.sh && ./script-2.sh

``` 


## Mac (10.15+ - intel processors)
This script will install brew to get applications, modify security permissions and enable key repeat (like Windows).

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