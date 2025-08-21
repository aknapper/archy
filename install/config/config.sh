#!/bin/bash

set -e

sudo pacman -Syu --noconfirm --needed \
	stow

# symlink all relevant dotfiles

