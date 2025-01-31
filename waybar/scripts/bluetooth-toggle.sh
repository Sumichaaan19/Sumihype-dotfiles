#!/bin/bash

STATE=$(bluetoothctl show | grep "Powered" | awk '{print $2}')

if [ "$STATE" = "yes" ]; then
    bluetoothctl power off
    notify-send "Bluetooth Disabled" "Wireless Bluetooth has been turned off."
else
    bluetoothctl power on
    notify-send "Bluetooth Enabled" "Wireless Bluetooth has been turned on."
fi
