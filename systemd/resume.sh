#!/bin/bash

#reset keymap while wakeup
export DISPLAY=:0
echo "hello"
sudo /usr/bin/xmodmap /home/mav/.Xmodmap
