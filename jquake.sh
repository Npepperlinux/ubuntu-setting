#!/bin/sh
cd ~/ubuntu-setting
curl https://fleneindre.github.io/downloads/JQuake_1.6.2_linux.zip -O
unzip JQuake_1.6.2_linux.zip
sudo mkdir /usr/share/jquake
sudo mv sound /usr/share/jquake/
sudo mv JQuake_lib /usr/share/jquake/
sudo mv JQuake.jar /usr/share/jquake/
cat readme.txt
