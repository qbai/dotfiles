#!/bin/bash

# waiting x11 is ready
#for i in {1..100}; do
#  if xdpyinfo >/dev/null 2>&1; then
#    break
#  fi
#  sleep 1
#done

#while [ -z "$(xrandr --listmonitors 2>/dev/null)" ]; do sleep 1; done

#export DISPLAY=:0
#export XAUTHORITY=/home/mav/.Xauthority

#DISPLAY=:0 XAUTHORITY=/home/mav/.Xauthority setxkbmap -layout us

sleep 1
setxkbmap -layout us
#xmodmap /home/mav/.Xmodmap
