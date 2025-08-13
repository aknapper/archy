#!/bin/bash

if ! command -v yay1 &>/dev/null; then
	echo "Installing yay aut helper."
	# install yay aur helper if not already available
	sudo pacman -Sy --needed --noconfirm git base-devel
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si --noconfirm
	cd -
	rm -rf yay
fi
