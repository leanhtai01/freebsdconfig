#!/bin/sh

set -e

install_command="pkg install -y"

$install_command fusefs-ntfs
printf 'fusefs_load="YES"\n' >> /boot/loader.conf
