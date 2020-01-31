#!/bin/bash

sudo apt install -y fish ssmtp mailutils trash-cli

# Runcom files
git clone https://github.com/saratrajput/runcom_backups.git

# Docker image
sudo usermod -aG docker $USER
sudo chmod 666 /var/run/docker.sock
docker pull saratrajput/cr-dope:v2

# CR-DOPE repository
git clone https://pattarsuraj@bitbucket.org/octochef0/cr-dope.git cr-dope


# Setup ssmtp
cd /etc/ssmtp/

sudo sed -i  's/postmaster/cronjob.suraj@gmail.com/' ssmtp.conf
sudo sed -i  '10s/=mail/=smtp.gmail.com:587/' ssmtp.conf
sudo sed -i  '11iAuthUser=cronjob.suraj' ssmtp.conf
sudo sed -i  '12iAuthPass=europedoesdelicateuseful' ssmtp.conf
sudo sed -i  '13iUseSTARTTLS=YES' ssmtp.conf
sudo sed -i  '$ s/#//' ssmtp.conf

fish
cp -r ~/runcom_backups/functions ~/.config/fish/

cd
echo 'termcapinfo xterm* ti@:te@' >> .screenrc
