#!/usr/local/bin/bash

set -e

install_command="pkg install -y"

# browser
$install_command chromium

# editors
$install_command vim

# programming
$install_command git
