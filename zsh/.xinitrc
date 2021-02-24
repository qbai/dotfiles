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
if [ -f $HOME/.Xmodmap ]; then
	xmodmap $HOME/.Xmodmap
fi

#sogou pinyin
#export LC_ALL=zh_CN.UTF-8
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

#export LANG=zh_CN.UTF-8
#export LANGUAGE=zh_CN:en_US
#export LC_CTYPE=en_US.UTF-8


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
#mpd &

# setup fonts
xset +fp ~/.fonts &
xset fp rehash &

xset -dpms &
xset s noblank &
xset s 0 0 &
xset s noexpose &

compton --backend glx &
feh --bg-fill ~/dotfiles/wallpaper/herbst.jpg &

# diconnect macbook's screen at startup
#xrandr --output eDP-1 --off

# sogou pinyin configuration
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
if [ -x "$(which fcitx)" ]; then
	fcitx &
fi

# touchpad configuration
#xinput set-prop bcm5974 'Trackpad Scroll Settings' 60 20 0

#screen lock, off and suspend time
# 1. in the office
#xset dpms 0 0 600
#xset s 300
#(xss-lock -- lock -n >/dev/null 2>&1)&

####xset s 30 20
####(xss-lock -n /usr/share/doc/xss-lock/dim-screen.sh -- lock -n >/dev/null 2>&1)&

# 2. at home
xset dpms 0 0 1200

####xset s 600
####(xss-lock -- xset dpms force off >/dev/null 2>&1)&
####(xss-lock -- xlock -mode blank >/dev/null 2>&1)&

# ░▒▓█ herbstluft █▓▒░
exec herbstluftwm --locked
