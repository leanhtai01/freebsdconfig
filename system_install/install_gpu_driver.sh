#!/usr/local/bin/bash

set -e

install_command="pkg install -y"

(cd /usr/ports/graphics/drm-kmod; make install clean)
$install_command intel-backlight intel-compute-runtime libva-intel-media-driver

sysrc kld_list="i915kms"
