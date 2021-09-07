#!/usr/local/bin/bash

set -e

install_command="pkg install -y"

$install_command drm-kmod intel-compute-runtime libva-intel-media-driver

sysrc kld_list="i915kms"
