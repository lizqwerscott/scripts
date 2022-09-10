#!/bin/sh
nmcli device wifi rescan
nmcli device wifi list

if (( $# >= 2 )); then
    echo "bigger"
    nmcli device wifi connect $1 password $2
else
    echo "small"
    nmcli device wifi connect $1
fi
