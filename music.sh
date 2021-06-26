#!/bin/sh

while true; do
  cd ~/Music/
  for i in *; do
    echo "P:$i"
    play "$i"
  done
done

