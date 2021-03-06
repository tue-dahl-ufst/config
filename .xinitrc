#!/bin/sh

userresources=$XDG_CONFIG_HOME/X11/Xresources
usermodmap=$XDG_CONFIG_HOME/xkb/us_da.xkb
#sysresources=/etc/X11/xinit/.Xresources
#sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps
#[[ -f $sysresources ]] && xrdb -merge $sysresources
#[[ -f $sysmodmap ]] && xmodmap $sysmodmap
[[ -f "$userresources" ]] && xrdb -merge "$userresources"
[[ -f "$usermodmap" ]] && xkbcomp -I$XDG_CONFIG_HOME/xkb "$usermodmap" $DISPLAY

# fast typing in terminal
xset r rate 300 50

# needed for java programming
wmname LG3D

# put battery and time in statusbar
while true; do
	battery=$(acpi | awk '{sub(",", "", $4); print $4}')
	time=$(date +"Week %-V %b %-d %a %R")
	#weather=$(curl wttr.in/Aarhus+Ø?format=1)
	xsetroot -name "$battery"' | '"$time"
	sleep 1m
done &


# start 
exec dwm

