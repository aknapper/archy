#!/bin/bash

yay -S --noconfirm --needed power-profiles-daemon

if ls /sys/class/power_supply/BAT* &>/dev/null; then
	# running on battery
	powerprofilesctl set balanced || true
	
	# enable batt monitoring timer for low batt notifications
	systemctl --user enable --now battery-monitor.timer || timer
else
	# no battery (outlet)
	powerprofilesctl set performance || true
fi
