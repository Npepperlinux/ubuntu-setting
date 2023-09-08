#!/bin/sh
LANG=C xdg-user-dirs-gtk-update

sudo apt install -y curl

# Add Vivaldi repo
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository 'deb [arch=amd64] https://repo.vivaldi.com/archive/deb/ stable main'

# Remove Software
sudo apt autoremove -y fonts-tlwg*
sudo apt autoremove -y fonts-lohit*
sudo apt autoremove -y command-not-found


# Add Other Software repo
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt dist-upgrade

# Install Software

sudo apt install -y vivaldi-snapshot
sudo apt install -y android-tools scrcpy
sudo apt install -y msttcorefonts
sudo apt install -y qwinff
sudo apt install -y cpu-x solaar gnome-clocks
sudo apt install -y exiftool htop

sudo snap install vlc
sudo snap install libreoffice
sudo snap install code
sudo snap install spotify

curl -o /usr/local/bin/linphone -L $(curl -s https://download.linphone.org/releases/linux/RELEASE | cut -f 2) && chmod a+x /usr/local/bin/linphone

# Setup KeePassXC with Vivaldi Snapshot

mkdir -p ~/.config/vivaldi-snapshot/NativeMessagingHosts
cp ~/ubuntu-setting/org.keepassxc.keepassxc_browser.json ~/.config/vivaldi-snapshot/NativeMessagingHosts/
