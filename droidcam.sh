#!/bin/sh
cd /tmp/
wget -O droidcam_latest.zip https://files.dev47apps.net/linux/droidcam_1.7.2.zip
# sha1sum: c5154cd85ee4da3b951777dbae156cdb5bea7176
unzip droidcam_latest.zip -d droidcam
cd droidcam && sudo ./install-client
sudo apt install linux-headers-generic gcc make
sudo ./install-video
sudo ./install-sound
