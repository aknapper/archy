#!/bin/bash

if ! grep -q "ILoveCandy" /etc/pacman.conf; then
	sudo sed -i '/^\[options\]/a Color\nILoveCandy' /etc/pacman.conf
fi
