#!/usr/bin/env bash

choice=$(printf "Lock\nLogout\nReboot\nShutdown\nSuspend" | wofi --dmenu --prompt "Power")

case "$choice" in
  Lock)
    hyprlock
    ;;
  Logout)
    hyprctl dispatch exit
    ;;
  Reboot)
    systemctl reboot
    ;;
  Shutdown)
    systemctl poweroff
    ;;
  Suspend)
    systemctl suspend
    ;;
esac
