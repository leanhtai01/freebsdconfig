#!/usr/local/bin/bash

set -e

install_command="pkg install -y"

# font
$install_command hack-font

# browser
$install_command chromium

# editors
$install_command emacs
