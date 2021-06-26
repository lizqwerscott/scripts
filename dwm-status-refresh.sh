#!/bin/sh

battery=`acpi`
nowtime=$(date '+%Y年%m月%d日 %a %H:%M:%S')

xsetroot -name "${battery} | ${nowtime}"

