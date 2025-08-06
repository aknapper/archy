#!/bin/bash

if ! grep -q "ILoveCandy" /etc/pacman.conf; then
	# remove existing commented color option
	sudo sed -i '/^\s*#\s*Color\s*$/d' /etc/pacman.conf
	# insert color and ilovecandy under 'misc options' in the [options] section
	sudo sed -i '/^\[options\]/,/^\[/ {
		/^\s*#\s*Misc options\s*$/ {
			n
			a\
Color\nILoveCandy
		}
	}' /etc/pacman.conf
fi
