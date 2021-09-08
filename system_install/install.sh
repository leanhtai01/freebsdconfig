#!/usr/local/bin/bash

set -e

current_dir=$(dirname $0)
username=
desktop_environment=

. $current_dir/set_install_info.sh
. $current_dir/install_gpu_driver.sh
. $current_dir/install_core_packages.sh
. $current_dir/install_desktop_environment.sh "$desktop_environment" $username
