#!/bin/sh

result=$(ps ax|grep -v grep|grep trayer)
if [ "$result" == "" ]; then
  trayer --align right --width 10 --transparent true
else
  eval "killall trayer"
fi

