#!/bin/sh
nmcli device wifi list

nmcli device wifi connect $1 password $2
