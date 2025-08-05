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
#if [ -f $HOME/.Xdefaults ]; then
#	xrdb -merge "${HOME}/.Xdefaults" &
#fi
[ -f $HOME/.Xresources ] && xrdb -merge "$HOME/.Xresources" &

# custom keymappings by xmodmap
#if [ -f $HOME/.Xmodmap ]; then
#	xmodmap $HOME/.Xmodmap
#fi


#export LC_ALL=zh_CN.UTF-8
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
#xset r rate 250 25 &

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
#feh --bg-fill ~/dotfiles/wallpaper/herbst.jpg &

## diconnect macbook's screen at startup
#xrandr --output eDP-1 --off
## rotate monitor as long direction
#xrandr --output DP-2 --rotate left

# setup LG dualup monitor at home
#[ "$(uname -n)" = "ultimate-lnx" ] && xrandr -s 2560x2880

# sogou pinyin configuration
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
if [ -x "$(which fcitx)" ]; then
	fcitx &
fi

# touchpad configuration
#xinput set-prop bcm5974 'Trackpad Scroll Settings' 60 20 0

# manually shutdown screen
#xset dpms force off


###### config screen lock, off, suspend or hibernate ######

if [ "$(uname -n)" = "ultimate-lnx" ]; then
    #xset s 3600 0
    #xss-lock -- bash -c 'systemctl hibernate' & # hibernate after 1hour 
    
    xset s off
    xset +dpms
    xset dpms 0 0 1200 # shutdown screen after 20min
    xautolock -time 60 -locker "systemctl hibernate" & # hibernate after 1hour
    
else
    xset s 1200 0
   (xss-lock -- lock -n >/dev/null 2>&1)& # lock screen after 20min
   #(xss-lock -n suspend -- lock -n >/dev/null 2>&1)&
   	
    xautolock -time 60 -locker "systemctl suspend" & # suspend after 1hour
   #xautolock -time 60 -locker "i3lock && systemctl suspend" &	      
fi

#xset s 1800
#(xss-lock -- hibernate >/dev/null 2>&1)& # hibernate after half hour


####(xss-lock -- lock -n >/dev/null 2>&1)&
####xset s 30 20
####(xss-lock -n /usr/share/doc/xss-lock/dim-screen.sh -- lock -n >/dev/null 2>&1)&

####xset s 600
####(xss-lock -- xset dpms force off >/dev/null 2>&1)&
####(xss-lock -- xlock -mode blank >/dev/null 2>&1)&

##########################################################

# enable ss-local
#sudo systemctl start shadowsocks-libev@jp.service
##ss-local -c /etc/shadowsocks/jp.json &

# enable pac http server temporarily
(python -m http.server 8080 -b 127.0.0.1 -d /etc/v2ray >/dev/null 2>&1)&

# auto mount udisk
udiskie -n -t -a &


# custom keymapping by xkb for filco keyboard
## (Super_L <-> Alt_L) (~ <-> `)
##setxkbmap -option "altwin:swap_lalt_lwin,tilde:grave"
#setxkbmap -option "altwin:swap_lalt_lwin,(another option)"
#systemctl --user start startup.service
(. ~/dotfiles/systemd/startup.sh)&


# start firewall rules
(sudo nft -f /etc/nftables.conf)&


# ░▒▓█ herbstluft █▓▒░
exec herbstluftwm --locked
