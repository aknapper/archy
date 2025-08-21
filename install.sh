#!/bin/bash

set -e

ARCHY_INSTALL=~/.local/bin/archy/install

source $ARCHY_INSTALL/prereq/makepkg.sh
source $ARCHY_INSTALL/prereq/pacman.sh
source $ARCHY_INSTALL/prereq/aur.sh

source $ARCHY_INSTALL/config/config.sh
source $ARCHY_INSTALL/config/power.sh
source $ARCHY_INSTALL/config/nvidia.sh

source $ARCHY_INSTALL/development/terminal.sh
source $ARCHY_INSTALL/development/docker.sh
source $ARCHY_INSTALL/development/nvim.sh
source $ARCHY_INSTALL/development/firewall.sh

source $ARCHY_INSTALL/desktop/desktop.sh
source $ARCHY_INSTALL/desktop/hypr.sh
source $ARCHY_INSTALL/desktop/fonts.sh

sudo pacman -Syu --noconfirm

echo -e "Finished bootstrapping arch setup. Rebooting now..."
sleep 5
reboot
