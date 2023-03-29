#!/bin/sh
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && sh ~/.xprofile
[ -f ~/.Xdefaults ] && xrdb ~/.Xdefaults
exec dunst &
exec ~/.local/bin/locker &
exec picom -b &
ulimit -Sc 0
feh --bg-fill /usr/share/backgrounds/oddments.png &
gentoo-pipewire-launcher &
exec sdorfehs
