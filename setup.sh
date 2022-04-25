#!/bin/sh
LANG=C xdg-user-dirs-gtk-update

sudo apt remove -y eog firefox
sudo apt autoremove

# Add Vivaldi repo
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository 'deb [arch=amd64] https://repo.vivaldi.com/archive/deb/ stable main'
# Add Microsoft Edge repo
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo rm microsoft.gpg
# Add Chrone repo
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main"'

sudo apt install -y chrome-gnome-shell gnome-shell-extension-prefs
sudo apt install -y gnome-shell-extension-caffeine
sudo apt install -y dash
sudo apt install -y vivaldi-snapshot
sudo apt install -y microsoft-edge-dev
sudo apt install -y google-chrome-stable
sudo apt install -y qview
sudo apt install -y inkscape
sudo apt install -y gimp
sudo apt install -y htop
sudo apt install -y android-tools
sudo apt install -y msttcorefonts
sudo apt install -y ffmpeg
sudo apt install -y qwinff
sudo apt install -y darktable
sudo apt install -y cpu-x
sudo apt install -y inkscape
sudo apt install -y solaar
sudo apt install -y scrcpy
sudo apt install -y gnome-clocks
sudo add-apt-repository universal
sudo add-apt-repository ppa:phoerious/keepassxc
sudo add-apt-repository ppa:obsproject/obs-studio
sudo add-apt-repository -n ppa:libreoffice/ppa
sudo apt update
sudo apt dist-upgrade
sudo apt install -y vlc
sudo apt install -y keepassxc
sudo apt install -y obs-studio

mkdir ~/.config/vivaldi-snapshot/NativeMessagingHosts
cp ~/ubuntu-setting/org.keepassxc.keepassxc_browser.json ~/.config/vivaldi-snapshot/NativeMessagingHosts/

