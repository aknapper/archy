#!/bin/bash

sudo pacman -Sy --noconfirm --needed \
	docker \
	docker-compose \
	docker-buildx
	
# limit log size to avoid running out of disk space
sudo mkdir -p /etc/docker
echo '{"log-driver":"json-file","log-opts":{"max-size":"10m","max-file":"5"}}' | sudo tee /etc/docker/daemon.json

# start docker at system boot
sudo systemctl enable docker

# add current user to the docker group
sudo usermod -aG docker ${USER}

# Prevent Docker from preventing boot for network-online.target
sudo mkdir -p /etc/systemd/system/docker.service.d
sudo tee /etc/systemd/system/docker.service.d/no-block-boot.conf <<'EOF'
[Unit]
DefaultDependencies=no
EOF

sudo systemctl daemon-reload
