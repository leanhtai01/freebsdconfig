#!/usr/local/bin/bash

set -e

install_command="pkg install -y"

$install_command i3 i3lock i3status dmenu rxvt-unicode feh
