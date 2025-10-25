#!/bin/bash

# Define the power menu options
options="Lock\nLogout\nSuspend\nReboot\nShutdown"

# Show the options with wofi and store the user's choice
choice=$(echo -e "$options" | wofi --dmenu --prompt="Power Menu")

# Execute the selected action
case "$choice" in
    Lock)
        swaylock ;;
    Logout)
        # You may need to adapt this command for your specific compositor
        # For Sway:
        #swaymsg exit
        # For Hyprland:
        hyprctl dispatch exit ;;
    Suspend)
        systemctl suspend ;;
    Reboot)
        systemctl reboot ;;
    Shutdown)
        systemctl poweroff ;;
    *)
        ;;
esac

