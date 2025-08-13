#!/bin/bash

sudo pacman -Sy --noconfirm --needed \
	fastfetch \
	btop \
	tree \
	man \
	github-cli \
	lazygit \
	kitty

yay -S --noconfirm --needed \
	lazydocker
