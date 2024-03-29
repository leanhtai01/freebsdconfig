#!/bin/sh

set -e

install_command="pkg install -y"

$install_command baobab cheese eog evince file-roller gdm gnome-backgrounds gnome-calculator gnome-calendar gnome-characters gnome-clocks gnome-color-manager gnome-control-center gnome-keyring gnome-menus gnome-photos gnome-screenshot gnome-session gnome-settings-daemon gnome-shell gnome-shell-extensions gnome-system-monitor gnome-terminal gnome-themes-extra mutter nautilus sushi seahorse chrome-gnome-shell khelpcenter dconf-editor gnome-tweaks totem tracker-miners

sysrc dbus_enable=YES
sysrc gnome_enable=YES
sysrc gdm_enable=YES

# mount /proc
printf 'proc\t/proc\tprocfs\trw\t0\t0\n' >> /etc/fstab
