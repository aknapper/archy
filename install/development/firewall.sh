#!/bin/bash

if ! command -v ufw &>/dev/null; then
	sudo pacman -Sy --noconfirm --needed ufw
	yay -S --noconfirm --needed ufw-docker

	# allow nothing in, everything out
	sudo ufw default deny incoming
	sudo ufw default allow outgoing

	# allow ssh in
	sudo ufw allow 22/tcp

	# allow docker containers to use DNS on host
	sudo ufw allow in on docker0 to any port 53

	# turn on the firewall
	sudo ufw enable

	# turn on docker protections
	sudo ufw-docker install
	sudo ufw reload
fi
