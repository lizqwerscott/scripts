#!/bin/sh

wallpaper_dir="/home/lizqwer/Pictures/background/"

while true; do
    swaybg -i $(find $wallpaper_dir -type f | shuf -n 1) -m fill &
    sleep 30
    pkill swaybg
done
