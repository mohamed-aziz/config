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


if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

# Disable access control
# xhost +SI:localuser:$USER

# Themes, etc
# gnome-settings-daemon &

# Fallback cursor
xsetroot -cursor_name left_ptr

# Keyboard repeat rate
xset r rate 200 60

# Start Emacs
exec dbus-launch --exit-with-session emacs

# exec i3
