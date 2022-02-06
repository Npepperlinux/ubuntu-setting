#!/bin/sh
LANG=C xdg-user-dirs-gtk-update
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true 

sudo apt remove -y eog firefox
sudo apt autoremove

sudo apt install -y gnome-shell-extension-prefs 
sudo apt install -y chrome-gnome-shell gnome-shell-extension-prefs 
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

