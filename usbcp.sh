#!/bin/bash

sudo cp -r ${1} ${2}
name=`basename ${1}`
newname="${2}${name}"
sudo chown lizqwer $newname
sudo chgrp lizqwer $newname
sudo chmod -x $newname
