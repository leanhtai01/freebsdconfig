#!/usr/local/bin/bash

set -e

# create required files and dirs
mkdir -p /home/$(whoami)/.config

# copy required files
cp -r i3config/i3 /home/$(whoami)/.config
cp -r i3config/i3status /home/$(whoami)/.config
cp data/.Xresources /home/$(whoami)
