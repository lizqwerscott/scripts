#!/bin/sh

# need install i3lock-color xautolock swaylock

lock_picture="/home/lizqwer/Pictures/background/105118231_p0.png"

# convert $lock_picture -resize $(xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/') RGB:- | i3lock --raw $(xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/'):rgb --image /dev/stdin

# convert $lock_picture -resize $(xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/') RGB:- | i3lock --raw $(xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/'):rgb --image /dev/stdin

desktop_environment=$(echo $XDG_CURRENT_DESKTOP | tr '[:upper:]' '[:lower:]')

case $desktop_environment in
    "hyprland")
        echo "Running commands for XFCE Desktop"
        # 在这里添加执行XFCE桌面环境下的命令
        swaylock -t -i $lock_picture
        ;;
    *)
        echo "Unknown or unsupported desktop environment: $desktop_environment"
        # 在这里添加处理未知桌面环境的命令
        i3lock -t -i $lock_picture
        ;;
esac
# if use hyperland
# swaylock -i 105118231_p0.png
# BLANK='#00000000'
# CLEAR='#ffffff22'
# DEFAULT='#00897bE6'
# TEXT='#00897bE6'
# WRONG='#880000bb'
# VERIFYING='#00564dE6'

# convert ~/Pictures/background/105584062_p0.png -resize $(xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/') RGB:- |
# i3lock \
# --insidever-color=$CLEAR     \
# --ringver-color=$VERIFYING   \
# \
# --insidewrong-color=$CLEAR   \
# --ringwrong-color=$WRONG     \
# \
# --inside-color=$BLANK        \
# --ring-color=$DEFAULT        \
# --line-color=$BLANK          \
# --separator-color=$DEFAULT   \
# \
# --verif-color=$TEXT          \
# --wrong-color=$TEXT          \
# --time-color=$TEXT           \
# --date-color=$TEXT           \
# --layout-color=$TEXT         \
# --keyhl-color=$WRONG         \
# --bshl-color=$WRONG          \
# \
# --screen 1                   \
# --clock                      \
# --blur 9                     \
# --indicator                  \
# --time-str="%H:%M:%S"        \
# --date-str="%A, %Y-%m-%d"       \
# --keylayout 1                \
       # --raw $(xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/'):rgb --image /dev/stdin
