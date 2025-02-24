#!/bin/sh

WARNING_PERCENTAGE=60
NOTIFICATION_TIMEOUT=5000
SLEEP_BETWEEN_CHECKS=120

while true; do
	battery=$(upower -i "$(upower -e | grep BAT)" | grep -E "percentage" | awk '{print $2}' | tr -d '%')
	if [ "$battery" -le "$WARNING_PERCENTAGE" ]; then
		hyprctl notify 0 $NOTIFICATION_TIMEOUT 0 "  Low battery: ${battery}%"
		sleep $SLEEP_BETWEEN_CHECKS
	else
		echo "Battery is at ${battery}%"
		sleep $SLEEP_BETWEEN_CHECKS
	fi
done
