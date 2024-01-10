#!/usr/bin/sh

# dwm-status
./dwm/dwm-status.sh &

# Background
./dwm/background.sh &

# 启动基础程序
exec picom & # 特效合成器
exec fcitx5 & # 输入法
exec redshift & # 护眼程序
exec dunst -conf $HOME/.config/dunst/dunstrc & # 通知程序
exec flameshot & # 截图程序
exec xfce4-power-manager & # 启动电源管理程序
# xautolock -time 3 -locker "screen-lock.sh" & # 自动锁屏程序

# arch checkupdate
./checkupdates.sh &
# 其他

#slove android studio
wmname LG3D

#slove the resolution
#xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
#xrandr --addmode Virtual-1 1920x1080_60.00
#xrandr --output Virtual-1 --mode 1920x1080_60.00
xrandr --output HDMI-1 --left-of eDP-1 --auto
# xrandr --output eDP-1 --off

#eye
# python eye.py &

#mount

#Syncthing
#exec syncthing &

#Just like above, you must make sure to run /usr/bin/prime-offload (as normal user) just after the X server is started, and /usr/bin/prime-switch (as root) after it has stopped.

#/usr/bin/prime-offload &
