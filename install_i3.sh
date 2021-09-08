#!/bin/sh

set -e

install_command="pkg install -y"
username=$1

$install_command i3 i3lock i3status dmenu rxvt-unicode feh

# create required files and dirs
mkdir -p /home/${username}/.config

# copy required files
cp -r i3config/i3 /home/${username}/.config
cp -r i3config/i3status /home/${username}/.config
cp data/.Xresources /home/${username}

# change owner from root to user
chown -R ${username}:${username} /home/${username}/.config
chown -R ${username}:${username} /home/${username}/.Xresources
