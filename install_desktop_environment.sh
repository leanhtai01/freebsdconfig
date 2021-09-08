#!/bin/sh

set -e

install_command="pkg install -y"
current_dir=$(dirname $0)

# install xorg
$install_command xorg

# add user to video groups
pw group mod video -m $2

if [ ! -z $1 ]
then
    for de in $1
    do
	case $de in
	    GNOME)
		printf 'GNOME will be installed!\n'
		;;
	    KDEPlasma)
	        $current_dir/install_KDE_Plasma.sh
		;;
	    i3)
		$current_dir/install_i3.sh $2
		;;
	esac
    done
fi
