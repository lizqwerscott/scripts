#!/bin/sh

du -h --max-depth=1 | grep "[0-9]$1" | sort -n
