#!/bin/bash
picom -i 1.0 -b
killall -q polybar
#polybar jonfelix 2>&1 | tee -a /tmp/polybar.log & disown
feh --bg-fill /usr/share/backgrounds/norway1.jpg
transmission-daemon
