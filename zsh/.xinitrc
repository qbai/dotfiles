#!/bin/sh
#
#          ██          ██   ██
#         ░░          ░░   ░██
#  ██   ██ ██ ███████  ██ ██████ ██████  █████
# ░░██ ██ ░██░░██░░░██░██░░░██░ ░░██░░█ ██░░░██
#  ░░███  ░██ ░██  ░██░██  ░██   ░██ ░ ░██  ░░
#   ██░██ ░██ ░██  ░██░██  ░██   ░██   ░██   ██
#  ██ ░░██░██ ███  ░██░██  ░░██ ░███   ░░█████
# ░░   ░░ ░░ ░░░   ░░ ░░    ░░  ░░░     ░░░░░
#


if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# merge custom x resources
xrdb -merge "${HOME}/.Xdefaults" &

# custom keymappings
+xmodmap ~/.xmodmap


export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN:en_US
export LC_CTYPE=en_US.UTF-8


# start the terminal emulator daemon
#urxvtd -q -f -o &

# wifi
#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#(sleep 2s && nm-applet --sm-disable) &

# power management
#(sleep 2s && xfce4-power-manager) &

# sound mixer
#(sleep 2s && pnmixer) &

# volume keys daemon
#(sleep 2s && xfce4-volumed) &

# compositing manager
#compton -b --config ~/.config/compton.conf &

# start thunar daemon
#thunar --daemon &

# wallpaper
nitrogen --restore &

# configure touchpad
#syndaemon -i 0.8 -d &
#if egrep -iq 'touchpad' /proc/bus/input/devices; then
#	synclient VertEdgeScroll=0 &
#	synclient TapButton1=1 &
#	synclient HorizTwoFingerScroll=1 &
#fi

# clipboard manager
#(sleep 3s && clipit) &

# keyboard settings - 250 ms delay and 25 cps (characters per second) repeat rate.
xset r rate 250 25 &

# disable system beep
#xset b off &

# start the rock
mpd &

# setup fonts
xset +fp ~/.fonts &
xset fp rehash &

xset -dpms &
xset s noblank &
xset s 0 0 &
xset s noexpose &

compton --backend glx &
feh --bg-fill ~/dotfiles/wallpaper/herbst.jpg &


# ░▒▓█ herbstluft █▓▒░
exec herbstluftwm --locked
