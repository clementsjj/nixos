#!/bin/bash

# set directory to the script directory
cd "$(dirname "$0")"

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub org.signal.Signal

# Deploy the configs
cp ../configs/.bashrc ~/.bashrc
cp ../configs/.bash_aliases ~/.bash_aliases
cp ../configs/.bash_vars ~/.bash_vars
cp ../configs/kdeglobals ~/.config/kdeglobals
cp ../configs/keybindings.json ~/.config/Code/User/keybindings.json
cp ../configs/settings.json ~/.config/Code/User/settings.json

