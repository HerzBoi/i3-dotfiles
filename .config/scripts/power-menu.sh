#!/bin/bash

POWER="Shutdown\nReboot\nSleep"

POWER_TYPE=$(echo -e "$POWER" | rofi -dmenu -p "what do you want to do?:")

case "$POWER_TYPE" in
    "Shutdown")
        poweroff
        ;;
    "Reboot")
        reboot
        ;;
    "Sleep")
        systemctl suspend
        ;;
    *)
        echo "Invalid option selected."
        ;;
esac
