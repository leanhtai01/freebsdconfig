#!/usr/local/bin/bash

set -e

install_command="pkg install -y"

$install_command intel-backlight intel-compute-runtime libva-intel-media-driver
