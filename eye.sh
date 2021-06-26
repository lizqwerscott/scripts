#!/bin/sh


xgamma1=0.8
brightness=0.7

while true
do
  time='date +%H:%M:%S'

  #if [[ "$time" > "20:00:00" ]] || [[ "$time" < "8:00:00"]]
  if [[ $time > "20:00:00" ]]
  then
    if [[ $time > "08:00:00" ]]
    then
      echo "set the night mode"
      xgamma -bgamma $xgamma1 > /dev/null
      xrandr --output DVI-D-0 --brightness $brightness
    else
      echo "set the day mode"
      xgamma -bgamma 1.0 > /dev/null
      xrandr --output DVI-D-0 --brightness 1.0
    fi
  else
    echo "set the day mode"
    xgamma -bgamma 1.0 > /dev/null
    xrandr --output DVI-D-0 --brightness 1.0
  fi
  sleep 60
done
