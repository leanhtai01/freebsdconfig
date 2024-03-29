#!/bin/sh

set -e

install_command="pkg install -y"

$install_command plasma5-plasma ark dolphin dolphin-plugins konsole okular kdegraphics-thumbnailers kdemultimedia-ffmpegthumbs spectacle gwenview sddm khelpcenter plasma5-plasma-pa

sysrc dbus_enable=YES
sysrc hald_enable=YES
sysrc sddm_enable=YES

# mount /proc
printf 'proc\t/proc\tprocfs\trw\t0\t0\n' >> /etc/fstab
