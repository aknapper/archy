#!/bin/bash

set -e

source install/prereq/makepkg.sh
source install/prereq/pacman.sh
source install/prereq/aur.sh

source install/config/power.sh
source install/config/nvidia.sh

source install/development/terminal.sh
source install/development/docker.sh
source install/development/nvim.sh

source install/desktop/desktop.sh
source install/desktop/hypr.sh

sudo pacman -Syu --noconfirm
