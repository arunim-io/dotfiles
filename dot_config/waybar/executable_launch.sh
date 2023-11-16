#!/usr/bin/env sh

# Terminate already running bar instances
killall -q waybar

# Wait until the processes have been shut down
while pgrep -u "$(id -u)" -x waybar >/dev/null; do sleep 1; done

CONFIG_DIR="$HOME/.config/waybar"

CONFIG="$HOME/base.jsonc"
case $XDG_CURRENT_DESKTOP in
"Hyprland") CONFIG="$CONFIG_DIR/hyprland.jsonc" ;;
esac

waybar --config "$CONFIG" &
