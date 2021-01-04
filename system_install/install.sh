#!/usr/local/bin/bash

set -e

install_command="pkg install -y"
current_dir=$(dirname $0)

. $current_dir/install_gpu_driver.sh
. $current_dir/install_core_packages.sh
. $current_dir/install_desktop_environment.sh
