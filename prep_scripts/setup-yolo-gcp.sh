#!/bin/bash

# Install necessary utilities
sudo apt install -y fish ssmtp mailutils trash-cli

# Runcom files
git clone https://github.com/saratrajput/runcom_backups.git

# Docker permission if needed
sudo usermod -aG docker $USER
sudo chmod 666 /var/run/docker.sock

# Yolo repository
git clone https://github.com/AlexeyAB/darknet

# Setup ssmtp for mailing logs and error reports
cd /etc/ssmtp/

sudo sed -i  's/postmaster/cronjob.suraj@gmail.com/' ssmtp.conf
sudo sed -i  '10s/=mail/=smtp.gmail.com:587/' ssmtp.conf
sudo sed -i  '11iAuthUser=cronjob.suraj' ssmtp.conf
sudo sed -i  '12iAuthPass=europedoesdelicateuseful' ssmtp.conf
sudo sed -i  '13iUseSTARTTLS=YES' ssmtp.conf
sudo sed -i  '$ s/#//' ssmtp.conf

# Setup fish
fish
cp -r ~/runcom_backups/functions ~/.config/fish/
sudo chsh -s /usr/bin/fish

# Make screen scrollable
cd /home/suraj/
echo 'termcapinfo xterm* ti@:te@' >> .screenrc

# Compile darknet
cd /home/suraj/darknet/
sudo sed -i '/GPU=0/c\GPU=1' Makefile

make
