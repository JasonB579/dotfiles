#!/usr/bin/env bash

# Various options for the file browser script:
ROFI_SET_WALLPAPER="feh --bg-scale" #command for setting wallpaper
ROFI_WALLPAPER_DIR=$HOME/Pictures/Wallpapers

# Beginning of the script:
# Set the current directory to the starting directory
ROFI_WP_CUR_DIR="$ROFI_WALLPAPER_DIR"

# Handle argument.
if [ -n "$@" ] #if there are arguments
then
    ROFI_WP_CUR_DIR="${ROFI_WP_CUR_DIR}/$@"
fi

# If argument is no directory.
if [ ! -d "${ROFI_WP_CUR_DIR}" ] # should always be true
then
    if [ -f "${ROFI_WP_CUR_DIR}" ] # if the current dir is a normal file
    then
        # Set the wallpaper with ROFI_SET_WALLPAPER command
        echo "$ROFI_WP_CUR_DIR" > $HOME/.local/share/rofi/wallpaper # saves the wallpaper being set, so that it can be used when reloading window manager
        ROFI_FULL_CMD="$ROFI_SET_WALLPAPER $ROFI_WP_CUR_DIR"
        $ROFI_FULL_CMD
        exit;
    fi
    exit;
fi

# Output to rofi
ls $ROFI_WALLPAPER_DIR
