#!/bin/bash

LAST_SET_WP=$(cat "$HOME/.local/share/rofi/wallpaper")
feh --bg-scale "$LAST_SET_WP"
