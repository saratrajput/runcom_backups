#!/bin/sh

# Install base applications
sudo apt-get update &&
sudo apt-get install -y \
    feh \
    fish \
    flameshot \
    gnome-tweak-tool
    guake \
    htop \
    meld \
    openssh-server \
    terminator \
    trashput-cli \
    vim \
    xclip

# Setup autostart applications
sudo cp autostart/* ~/.config/autostart/

sudo cp .bash_aliases ~/

sudo cp config.fish ~/.config/fish/
