#!/bin/sh
echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian focal contrib" | sudo tee -a /etc/apt sources.list
sudo apt-key add oracle_vbox_2016.asc
sudo apt-key add oracle_vbox.asc
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt update
sudo apt install virtualbox-6.1
