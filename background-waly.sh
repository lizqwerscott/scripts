#!/bin/sh

battery=`acpi`
power_plug="Discharging"

if [[ $battery =~ $power_plug ]]
then
    lastplug=true
    echo "没有接入电源, 使用壁纸"
    pkill mpvpaper
    /home/lizqwer/scripts/background-static.sh &
else
    lastplug=false
    echo "接入电源, 开启动态壁纸"
    pkill swaybg
    pkill background-stat
    # mpvpaper "*" ~/Videos/灵梦.mp4 -o "--loop-file=inf" &
    background-video.sh &
fi
