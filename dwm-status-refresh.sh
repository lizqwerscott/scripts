#!/bin/sh

battery=`acpi`
nowtime=$(date '+%Y.%m.%d %a %H:%M:%S')
network=""
wifiUUID=""

#count=$(nmcli connection show --active | wc -l)
wifip=$(nmcli connection show --active | awk '{print $3}' | grep "wifi")
network=$(nmcli connection show --active | awk '{print $1, $3}' | grep "wifi")

if test $wifip = "wifi"
then
    wifiUUID="UUID: "
else
    network="no wifi"
fi

xsetroot -name "${battery} | ${wifiUUID}${network} | ${nowtime}"

