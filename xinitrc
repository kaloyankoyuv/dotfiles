#!/bin/sh

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

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
	[ -x "$f" ] && . "$f"
    done
    unset f
fi

setxkbmap -layout "us,bg(phonetic)" -option grp:toggle -option ctrl:nocaps
xwallpaper --maximize ~/dotfiles/wallpaper.jpg

while true
do
	xsetroot -name " BAT: `acpi | awk '{print $4}' | sed s/,//g` | VOL: `amixer | awk 'NR==5 {print $4}' | sed -e s/"\["// -e s/"\]"//` | `date`"
	sleep 1
done &

exec dwm
