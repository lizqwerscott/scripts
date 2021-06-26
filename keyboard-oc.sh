#!/bin/sh
index=$(xinput list | grep "AT" | grep -Eo "[0-9][0-9]")
echo $index
xinput set-prop $index "Device Enabled" $1
