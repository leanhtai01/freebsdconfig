#!/usr/local/bin/bash

set -e

install_command="pkg install -y"

$install_command i3 i3lock i3status dmenu rxvt-unicode feh

# create required files and dirs
mkdir -p /home/$(whoami)/.config

# copy required files
cp -r i3config/i3 /home/$(whoami)/.config
cp -r i3config/i3status /home/$(whoami)/.config
cp data/.Xresources /home/$(whoami)
