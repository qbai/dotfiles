#!/bin/bash

#reset keymap while wakeup
export DISPLAY=:0
/usr/bin/xmodmap /home/mav/.Xmodmap
