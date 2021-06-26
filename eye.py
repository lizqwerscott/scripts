#!/usr/bin/python

import time
import os

xgamma = 0.8
brightness = 0.7

sh_xgamma = "xgamma -bgamma "
sh_xrander = "xrandr --output eDP-1 --brightness "

while True:
    now_localtime = time.strftime("%H:%M:%S", time.localtime())
    if "06:00:00" < now_localtime < "23:00:00":
        print("set the day mode")
        os.system(sh_xgamma + "1.0")
        os.system(sh_xrander + "1.0")
    else:
        print("set the night mode")
        os.system(sh_xgamma + str(xgamma))
        os.system(sh_xrander + str(brightness))
    time.sleep(5)
