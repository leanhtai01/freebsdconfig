#!/usr/local/bin/bash

set -e

install_command="pkg install -y"

$install_command plasma5-plasma ark dolphin dolphin-plugins kleopatra konsole okular kdegraphics-thumbnailers digikam kdemultimedia-ffmpegthumbs spectacle gwenview sddm khelpcenter

sysrc dbus_enable=YES
sysrc hald_enable=YES
sysrc sddm_enable=YES
