#!/bin/bash

set -Eeo pipefail

wallpaper_dir="/home/lizqwer/Pictures/background/"

while true; do
    wallpaper_path=$(find $wallpaper_dir -type f | shuf -n 1)

    using_color_scheme=$(gsettings get org.gnome.desktop.interface color-scheme)

    if [[ "$using_color_scheme" == "'prefer-dark'" ]];
    then
        gsettings set org.gnome.desktop.background picture-uri-dark ${wallpaper_path}
    else
        gsettings set org.gnome.desktop.background picture-uri ${wallpaper_path}
    fi

    sleep 30
done
