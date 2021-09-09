#!/bin/sh

set -e

username=$1

mkdir -p /home/${username}/backup_files_emacs
mkdir -p /home/${username}/desktop_saves_emacs
cp data/.emacs /home/${username}/.emacs
