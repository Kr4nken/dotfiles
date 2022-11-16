#!/bin/bash
cp /etc/xdg/awesome/rc.lua rc.lua
cp ~/.bashrc .bashrc
cp ~/.alacritty.yml .alacritty.yml
cp ~/.vimrc .vimrc
cp ~/.xinitrc .xinitrc
cp /usr/share/jonfelix/boot.sh boot.sh
if [ "${HOSTNAME}" == "jonfelix" ]; then
	sed -e"755 s|10.0|5.0|" -i .alacritty.yml
fi
