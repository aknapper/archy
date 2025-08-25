#!/bin/bash

set -e

sudo pacman -Syu --noconfirm --needed \
	git

ARCHY_REPO="${ARCHY_REPO:-aknapper/archy}"

echo -e "\nCloning Archy from: https://github.com/${ARCHY_REPO}.git ..."
rm -rf ~/.local/bin/archy
git clone --recurse-submodules "https://github.com/${ARCHY_REPO}.git" ~/.local/bin/archy > /dev/null

echo -e "\nInstall starting..."
source ~/.local/bin/archy/install.sh
