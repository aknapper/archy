#!/bin/bash

set -e

sudo pacman -Syu --noconfirm --needed \
    stow

# symlink all relevant dotfiles
stow \
	-d ~/.local/bin/archy/.dotfiles \
	-t ~ \
	git \
	nvim

cp ~/.local/bin/archy/default/bashrc ~/.bashrc
