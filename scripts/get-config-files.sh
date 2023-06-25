#!/usr/bin/env bash

# KDE Configs
# kdeglobals - contains shortcuts 
# kglobalshortcutsrc -

files=(
    "${HOME}/.bashrc"
    "${HOME}/.bash_aliases"
    "${HOME}/.bash_vars"
    "${HOME}/.config/kdeglobals"
    "${HOME}/.config/kglobalshortcutsrc"
    "${HOME}/.config/kwinrc"
    "${HOME}/.config/plasmashellrc"
    "${HOME}/.config/plasma-org.kde.plasma.desktop-appletsrc"
    "${HOME}/.config/Code/User/keybindings.json"
    "${HOME}/.config/Code/User/settings.json"
)

# Get the script directory
script_dir=$(dirname "$0")
echo "script_dir: ${script_dir}"
# Create the 'configs' directory if it doesn't exist
mkdir -p "${script_dir}/../configs"

# Copy the files
for file in "${files[@]}"; do
    cp -v "$file" "${script_dir}/../configs"
done
