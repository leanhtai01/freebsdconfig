#!/usr/local/bin/bash

set -e

install_command="pkg install -y"
current_dir=$(dirname $0)

# install xorg
$install_command xorg

. $current_dir/install_KDE_Plasma.sh
