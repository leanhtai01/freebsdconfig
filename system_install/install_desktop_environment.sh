#!/usr/local/bin/bash

set -e

install_command="pkg install -y"
current_dir=$(dirname $0)

# install xorg
$install_command xorg

# add user to video groups
pw group mod video -m leanhtai01
