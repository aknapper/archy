#!/bin/bash

sudo pacman -Sy --noconfirm --needed \
	fastfetch \
	btop \
	tree \
	man \
	github-cli \
	lazygit \
	kitty \
	tldr \
	bash-completion \
	wget \
	curl \
	unzip \
	inetutils \
	impala

yay -S --noconfirm --needed \
	lazydocker
