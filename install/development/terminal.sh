#!/bin/bash

sudo pacman -Sy --noconfirm --needed \
	fastfetch \
	btop \
	tree \
	man \
	github-cli \
	lazygit

yay -S --noconfirm --needed \
	lazydocker
