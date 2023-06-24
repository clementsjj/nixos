#!/bin/bash

# Define an array with the file paths
files=(
    "/home/juuj/.bashrc"
    "/home/juuj/.bash_aliases"
    "/home/juuj/.bash_vars"
    "/home/juuj/.config/kdeglobals"
    "/home/juuj/.config/Code/User/keybindings.json"
    "/home/juuj/.config/Code/User/settings.json"
)

# Get the script directory
script_dir=$(dirname "$0")

# Create the 'configs' directory if it doesn't exist
mkdir -p "${script_dir}/../configs"

# Copy the files
for file in "${files[@]}"; do
    cp -v "$file" "${script_dir}/../configs"
done
