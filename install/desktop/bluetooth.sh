#!/bin/bash

yay -S --noconfirm --needed blueberry

sudo systemctl enable --noow bluetooth.service
