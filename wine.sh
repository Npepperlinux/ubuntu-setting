#!bin/sh
echo "Select Ubuntu Version"
echo "1) Ubuntu 22.04 (jammy)"
echo "2) Ubuntu 21.10 (impish)"
echo "3) Ubuntu 20.04 (focal) & Linux Mint 20.X"
echo "4) Ubuntu 18.04 (bionic) & Linux Mint 19.X"
read OS_SELECT
case $OS_SELECT in
	1)
	OS_VERSION = "jammy"
	;;
	2)
	OS_VERSION = "impish"
	;;
	3)
	OS_VERSION = "focal"
	;;
	4)
	OS_VERSION = "bionic"
	;;
esac
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo mv winehq.key /usr/share/keyrings/winehq-archive.key
wget -nc https://dl.winehq.org/wine-builds/ubuntu/dists/$OS_VERSION/winehq-$OS_VERSION.sources
sudo mv winehq-$OS_VERSION.sources /etc/apt/sources.list.d/

sudo apt update
sudo apt install -y --install-recommends winehq-stable

