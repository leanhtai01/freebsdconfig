#!/bin/sh

set -e

install_command="pkg install -y"

case $1 in
    intel)
	$install_command drm-kmod intel-compute-runtime libva-intel-media-driver
	sysrc kld_list="i915kms"
	;;
esac

