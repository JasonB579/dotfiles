#!/usr/bin/env bash

# Various options for the file browser script:
ROFI_SET_WALLPAPER="feh --bg-scale" #command for setting wallpaper
ROFI_WP_PREV_LOC_FILE=~/.local/share/rofi/rofi_fb_prevloc
ROFI_WP_HISTORY_FILE=~/.local/share/rofi/rofi_fb_history
ROFI_WALLPAPER_DIR=/home/jason/Pictures/Wallpapers
ROFI_WP_HISTORY_MAXCOUNT=5 # maximum number of history entries
# Comment the next variable to always start in the last visited directory,
# otherwise rofi_fb will start in the specified directory:
ROFI_WP_START_DIR=$HOME/Pictures/Wallpapers
# Uncomment the following line to disable history:
ROFI_FB_NO_HISTORY=1


# Beginning of the script:
# Create the directory for the files of the script
if [ ! -d $(dirname "${ROFI_WP_PREV_LOC_FILE}") ] # if ROFI_WP_PREV_LOC_FILE does not exist or isn't a directory
then
    mkdir -p "$(dirname "${ROFI_WP_PREV_LOC_FILE}")"
fi
if [ ! -d $(dirname "${ROFI_WP_HISTORY_FILE}") ] # if ROFI_WP_HISTORY_FILE does not exist or isn't a directory
then
    mkdir -p "$(dirname "${ROFI_WP_HISTORY_FILE}")"
fi

# Initialize $ROFI_WP_CUR_DIR
if [ -d "${ROFI_WP_START_DIR}" ] # if ROFI_WP_START_DIR exists and is a directory:
then
    ROFI_WP_CUR_DIR="${ROFI_WP_START_DIR}"
else
    ROFI_WP_CUR_DIR="$PWD"
fi

ROFI_WP_CUR_DIR="$ROFI_WP_START_DIR"

 # Read last location, otherwise we default to $ROFI_WP_START_DIR or $PWD.
#if [ -f "${ROFI_WP_PREV_LOC_FILE}" ] # if ROFI_WP_PREV_LOC_FILE exists and is a regular file
#then
#    ROFI_WP_CUR_DIR=$(cat "${ROFI_WP_PREV_LOC_FILE}")
#fi

# Handle argument.
if [ -n "$@" ] #if there are arguments
then
    if [[ "$@" == /* ]]
    then
        ROFI_WP_CUR_DIR="$@"
    else
        ROFI_WP_CUR_DIR="${ROFI_WP_CUR_DIR}/$@"
    fi
fi

# If argument is no directory.
if [ ! -d "${ROFI_WP_CUR_DIR}" ]
then
    if [ -f "${ROFI_WP_CUR_DIR}" ] # else if the current dir is a normal file
    then
        if [[ "${ROFI_FB_NO_HISTORY}" -ne 1 ]]
        then
            # Append selected entry to history and remove exceeding entries
            sed -i "s|${ROFI_WP_CUR_DIR}|##deleted##|g" "${ROFI_WP_HISTORY_FILE}"
            sed -i '/##deleted##/d' "${ROFI_WP_HISTORY_FILE}"
            echo "${ROFI_WP_CUR_DIR}" >> "${ROFI_WP_HISTORY_FILE}"
            if [ $(cat "${ROFI_WP_HISTORY_FILE}" | wc -l) -gt ${ROFI_WP_HISTORY_MAXCOUNT} ]
            then
                sed -i 1d "${ROFI_WP_HISTORY_FILE}"
            fi
        fi
        # Open the selected entry with $ROFI_FB_GENERIC_FO
        ROFI_FULL_CMD="$ROFI_SET_WALLPAPER $ROFI_WP_CUR_DIR"
        $ROFI_FULL_CMD
        if [ -d "${ROFI_WP_START_DIR}" ]
        then
            echo "${ROFI_WP_START_DIR}" > "${ROFI_WP_PREV_LOC_FILE}"
        fi
        exit;
    fi
    exit;
fi

# Process current dir.
if [ -n "${ROFI_WP_CUR_DIR}" ] # if cur_dir string is not empty
then
    ROFI_WP_CUR_DIR=$(readlink -e "${ROFI_WP_CUR_DIR}")
    echo "${ROFI_WP_CUR_DIR}" > "${ROFI_WP_PREV_LOC_FILE}"
    pushd "${ROFI_WP_CUR_DIR}" >/dev/null
fi

# Output to rofi
if [[ "${ROFI_FB_NO_HISTORY}" -ne 1 ]] #CURRENTLY ALWAYS TRUE
then
    tac "${ROFI_WP_HISTORY_FILE}" | grep "${ROFI_WP_CUR_DIR}"
fi
ls $HOME/Pictures/Wallpapers
# vim:sw=4:ts=4:et:
