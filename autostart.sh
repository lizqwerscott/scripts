#!/usr/bin/sh

exec picom &
exec fcitx5 &
exec redshift & 
exec twmnd &

#xmodmap /home/lizqwer/.Xmodmap

#slove android studio 
wmname LG3D

xfce4-power-manager &

#slove the resolution
#xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
#xrandr --addmode Virtual-1 1920x1080_60.00
#xrandr --output Virtual-1 --mode 1920x1080_60.00

#eye
python eye.py &

#dwm-status
./dwm-status.sh &

#Background
./background.sh &

#mount
#/usr/local/bin/mountdir.sh

#fcitx &

#Syncthing
exec syncthing &

