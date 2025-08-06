#!/bin/bash

# optimize makepkg builds to use all cores
sudo sed -i 's|^#MAKEFLAGS=".*"|MAKEFLAGS="-j$(nproc)"|' /etc/makepkg.conf
