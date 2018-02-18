#!/usr/bin/env bash

echo "Setting up Ubuntu 17.01"
echo "Last update to this script: 2/17/2018"

# update packages
echo "Updating packages"
sudo apt-get update -y
sudo apt-get upgrade -y
echo "Finished Update"

# Install Packages
echo "Installing basic programs"
sudo apt install -y vim git curl python python-pip python3 python3-pip thunderbird vlc dropbox gstreamer0.10-plugins-ugly libdvdread4 icedax tagtool easytag id3tool lame nautilus-script-audio-convert libmad0 mpg321 gstreamer1.0-libav flashplugin-installer utorrent unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller gparted flashplugin-nonfree terminator
echo "Finished install 1"

# Set up aliases
echo "Copying apt aliases"
echo '
alias sapti="sudo apt-get install"
alias saptu="sudo apt-get update"
alias saptU="sudo apt-get upgrade"
alias saptuu="sudo apt-get update && sudo apt-get upgrade"
alias saptp="sudo apt-get purge"
alias saptar="sudo apt-get autoremove"
alias saptdu="sudo apt-get dist-upgrade"
alias saptac="sudo apt-get autoclean"
alias sapts="sudo apt-cache search"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
' >> ~/.bash_aliases

# Set python3 as default

echo "TODO: Set python3 as default"

# Set terminator as default terminal

echo "TODO: Set terminator as default terminal"

# Install VSCode & Download / Apply settings

echo "TODO: Install VSCode & Download / Apply settings"

# Install Neovim & Download / Apply settings

echo "TODO: Install Neovim & Download / Apply settings"

# Install ZSH, Oh My ZSH, Download / Apply settings

echo "TODO: Install ZSH, Oh My ZSH, Download / Apply settings"

