#!/bin/sh

set -e

current_dir=$(dirname $0)
username=
desktop_environment=
gpu=

. $current_dir/set_install_info.sh
. $current_dir/install_gpu_driver.sh $gpu
. $current_dir/install_core_packages.sh
. $current_dir/configure_git.sh
. $current_dir/install_desktop_environment.sh "$desktop_environment" "$username"
