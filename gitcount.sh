#!/bin/sh

git log --author="$1" --pretty=tformat: --numstat | awk '{ add += $1 - $2 } END { printf "Total Lines: %s\n", add }'
