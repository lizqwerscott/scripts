#!/bin/sh

while true; do
    numupdate=$(checkupdates | wc -l)
    if [ $numupdate -ge 10 ]; then
        notify-send "New update available!" "System has $numupdate new packages." --icon=dialog-information
    fi

    sleep 3600
done
