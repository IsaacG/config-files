#!/bin/sh
# $Xorg: xinitrc.cpp,v 1.3 2000/08/17 19:54:30 cpqbld Exp $

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs


conky | while read -r; do xsetroot -name "$REPLY"; done & # Status bar clock etc

pgrep -x -U goodi xbindkeys >/dev/null || xbindkeys &
pgrep -x -U goodi urxvtd    >/dev/null || urxvtd -f 

# exec xterm -geometry 80x66+0+0 -name login
xsetroot -solid black

xrandr --output DVI-0 --auto
xrandr --output DVI-1 --auto
xrandr --output DVI-0 --auto --output DVI-1 --auto
xrandr --output DVI-0 --auto --output DVI-1 --auto --output DVI-0 --right-of DVI-1


exec dwm
