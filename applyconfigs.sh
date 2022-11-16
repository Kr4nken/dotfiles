#!/bin/bash
s=""
echo "#########################"
echo "#      BACKGROUNDS      #"
echo "#########################"
if [[ ! -d /usr/share/backgrounds ]]
then
	sudo mkdir /usr/share/backgrounds
	echo "Creating directory: /usr/share/backgrounds"
fi
sudo cp wallpapers/* /usr/share/backgrounds/
echo "Applied wallpapers!"

echo "#################"
echo "#     BOOT      #"
echo "#################"
if [[ ! -d /usr/share/jonfelix ]]
then
	sudo mkdir /usr/share/jonfelix
	echo "Creaing directory: /usr/share/jonfelix"
fi
sudo cp boot.sh /usr/share/jonfelix/boot.sh
echo "created file: /usr/share/jonfelix/boot.sh"

echo "################"
echo "#     ROFI     #"
echo "################"
if [[ ! -f /bin/rofi ]]
then
	s="${s} rofi"
	echo "rofi is not installed. Added to list."
fi
if [[ ! -d ~/.config/rofi ]]
then
	mkdir ~/.config/rofi
	echo "created directory: ~/.config/rofi"
fi
cp rofi/config.rasi ~/.config/rofi/config.rasi
echo "created file: ~/.config/rofi/config.rasi"
if [[ ! -d /usr/share/rofi/themes ]]
then
	sudo mkdir /usr/share/rofi/themes
	echo "Creating directory: /usr/share/rofi/themes"
fi
sudo cp rofi/jflx.rasi /usr/share/rofi/themes/jflx.rasi
echo "Created file: /usr/share/rofi/themes/jflx.rasi"
sudo cp rofi/nord-rofi /usr/share/rofi/themes/nord-rofi -r
echo "applied nord-rofi theme"

echo "########################"
echo "#       ALACRITTY      #"
echo "########################"
if [[ ! -f /bin/alacritty ]]
then
	s="${s} alacritty"
	echo "alacritty is not installed. Added to list."
fi
cp alacritty/.alacritty.yml ~/.alacritty.yml
echo "Created file: ~/.alacritty.yml"

echo "################"
echo "#     BASH     #"
echo "################"
cp bash/.bashrc ~/.bashrc
echo "Created file: ~/.bashrc"

echo "#################"
echo "#      FISH     #"
echo "#################"
if [[ ! -f /bin/fish ]]
then
	s="${s} fish"
	echo "fish is not installed. Added to list."
fi
if [[ ! -d ~/.config/fish ]]
then
	mkdir ~/.config/fish
	echo "Created directory: ~/.config/fish"
fi
cp fish/config.fish ~/.config/fish/config.fish
echo "Created file: ~/.config/fish/config.fish"

echo "#####################"
echo "#      AWESOME      #"
echo "#####################"
if [[ ! -f /bin/awesome ]]
then
	s="${s} aweome"
	echo "awesome is not installed. Added to list."
fi
sudo cp awesome/rc.lua /etc/xdg/awesome/rc.lua
echo "Created file: /etc/xdg/awesome/rc.lua"
sudo cp awesome/theme.lua /usr/share/awesome/themes/zenburn/theme.lua
echo "Created file: /usr/share/awesome/themes/zenburn/theme.lua"
sudo cp awesome/awesome-nord-theme /usr/share/awesome/themes/ -r
echo "Applied awesome-nord-theme"

echo "#################"
echo "#       LY      #"
echo "#################"
if [[ ! -d /etc/ly ]]
then
	sudo mkdir /etc/ly
	echo "Created directory: /etc/ly"
fi
sudo cp ly/ly.ini /etc/ly/config.ini
echo "Created file: /etc/ly/config.ini"

echo "#################"
echo "#      XORG     #"
echo "#################"
if [[ ! -f /bin/Xorg ]]
then
	s="${s} xorg-server"
	echo "xorg is not installed. Added to list."
fi
cp xorg/.xinitrc ~/.xinitrc
echo "Created file: ~/.xinitrc"

echo "#################"
echo "#      VIM      #"
echo "#################"
if [[ ! -f /bin/vim ]]
then
	s="${s} vim"
	echo "vim is not installed. Added to list."
fi
sudo cp vim/.vimrc ~/.vimrc
echo "Created file: ~/.vimrc"

echo "######################"
echo "#       POLYBAR      #"
echo "######################"
if [[ ! -f /bin/polybar ]]
then
	s="${s} polybar"
	echo "polybar is not installed. Added to list."
fi
if [[ ! -d ~/.config/polybar ]]
then
	mkdir ~/.config/polybar
	echo "Created directory: ~/.config/polybar"
fi
cp polybar/polybarconfig.ini ~/.config/polybar/config.ini
echo "Created file: ~/.config/polybar/config.ini"

echo "######################"
echo "######################"
echo "##                  ##"
echo "##     BROWSERS     ##"
echo "##                  ##"
echo "######################"
echo "######################"

echo "#####################"
echo "#      FIREFOX      #"
echo "#####################"
if [[ ! -f /bin/firefox ]]
then
	s="${s} firefox"
	echo "firefox is not installed. Added to list."
fi
for d in ~/.mozilla/firefox/* 
do
	if [[ -f $d/prefs.js ]]
	then
		echo "found profile: ${d}"
		if [[ ! -d $d/chrome ]]
		then
			mkdir $d/chrome
			echo "Creating directory: ${d}/chrome"
		fi
		if [[ ! -d $d/storage/default ]]
		then
			mkdir $d/storage/default -r
			echo "Creating directory: $d/storage/default"
		fi
		cp firefox/userChrome.css $d/chrome/userChrome.css
		echo "Creating file: ${d}/chrome/userChrome.css"
		cp firefox/prefs.js $d/chrome/prefs.js
		echo "Creating file: ${d}/chrome/prefs.js"
		cp firefox/extension-data/* $d/storage/default/ -r
		echo "Applying extension data."
	fi
done

echo "#########################"
echo "#      QUTEBROWSER      #"
echo "#########################"
if [[ ! -f /bin/qutebrowser ]]
then
	s="${s} qutebrowser"
	echo "qutebrowser is not installed. Added to list."
fi
if [[ ! -d ~/.config/qutebrowser ]]
then
	mkdir ~/.config/qutebrowser
	echo "Created directory: ~/.config/qutebrowser"
fi
cp qutebrowser/qute.py ~/.config/qutebrowser/config.py 
echo "Created file: ~/.config/qutebrowser/config.py"

echo "##################"
echo "#      LYNX      #"
echo "##################"
if [[ ! -f /bin/qutebrowser ]]
then
	s="${s} lynx"
	echo "lynx is not isntalled. Added to list."
fi

########################################
########################################

echo "########################"
echo "#       STARSHIP       #"
echo "########################"
if [[ ! -f /bin/starship ]]
then
	s="${s} starship"
	echo "starship is not installed. Added to list."
fi
cp starship/starship.toml ~/.config/starship.toml
echo "Created file: ~/.config/starship.toml"

echo "##################"
echo "#      PICOM     #"
echo "##################"
if [[ ! -f /bin/picom ]]
then
	s="${s} picom"
	echo "picom is not installed. Added to list."
fi

echo "#########################"
echo "#       UNCLUTTER       #"
echo "#########################"
if [[ ! -f /bin/unclutter ]]
then
	s="${s} unclutter"
	echo "unclutter is not install.ed Added to list."
fi

echo "####################"
echo "#       FONTS      #"
echo "####################"
if [[ ! -f /usr/share/fonts/TTF/FiraCode-Medium.ttf ]]
then
	s="${s} ttf-fira-code"
	echo "ttf-fira-code is not installed. Added to list."
fi
if [[ ! -f /usr/share/fonts/TTF/Iosevka\ Term\ Nerd\ Font\ Complete.ttf ]]
then
	s="${s} nerd-fonts-symbols-mono"
	echo "nerd-fonts-symbols-mono is not installed. Added to list."
fi 

echo "#########################"
echo "#       PIPEWIRE        #"
echo "#########################"
if [[ ! -f /bin/pipewire ]]
then
	s="${s} pipewire"
	echo "pipewire is not installed. Added to list."
fi
if [[ ! -f /bin/pamixer ]]
then
	s="${s} pamixer"
	echo "pamixer is not installed. Added to list."
fi

echo "####################"
echo "#       TOOLS      #"
echo "####################"
if [[ ! -f /bin/fd ]]
then
	s="${s} fd"
	echo "fd is not installed. Added to list."
fi
if [[ ! -f /bin/bat ]]
then
	s="${s} bat"
	echo "bat is not installed. Added to list."
fi
if [[ ! -f /bin/dust ]]
then
	s="${s} dust"
	echo "dust is not installed. Added to list."
fi
if [[ ! -f /bin/exa ]]
then
	s="${s} exa"
	echo "exa is not installed. Added to list."
fi
if [[ ! -f /bin/feh ]]
then
	s="${s} feh"
	echo "feh is not installed. Added to list."
fi
if [[ ! -f /bin/nmtui ]]
then
	s="${s} nmtui"
	echo "nmtui is not installed. Added to list."
fi
if [[ ! -f /bin/gtop ]]
then
	s="${s} gtop"
	echo "gtop is not installed. Added to list."
fi
if [[ ! -f /bin/mousepad ]]
then
	s="${s} mousepad"
	echo "mousepad is not installed. Added to list."
fi

if [[ ! -f /bin/lshw ]]
then
	s="${s} lshw"
	echo "lshw is not installed. Added to list."
fi

echo "###############"
echo "#     AUR     #"
echo "###############"
if [[ ! -f /bin/yay ]]
then
	git clone https://aur.archlinux.org/yay.git
	cd yay
	echo "Fetched yay"
	makepkg -si
	echo "compiled yay"
	cd .. && rm -rdf yay
	echo "removed source"
fi

echo "#######################"
echo "#     COLORSCRIPT     #"
echo "#######################"
if [[ ! -f /usr/local/bin/colorscript ]]
then
	yay -S shell-color-scripts
	echo "installed colorscript"
fi

###############
#     VLC     #
##############
if [[ ! -f /bin/vlc ]]
then
	s="${s} vlc"
	echo "vlc is not installed. Added to list."
fi

###################
#     INSTALL     #
###################
if [[ ! "$s" = "" ]]
then
	echo "Installing from list..."
	sudo pacman -S$s
fi

###############
#     DNS     #
###############
sudo sed -i "s/#DNS=.*/DNS=185.189.50.240/g" /etc/systemd/resolved.conf
sudo sed -i "s/nameserver .*/nameserver 185.189.50.240/g" /etc/resolv.conf
echo "DNS server pointed"

