#!/bin/bash

########################################
# Base install of i3
# Tiled Window Manager
########################################

# i3 install with thanks to
# https://www.reddit.com/r/unixporn/comments/3efhs7/i3_gaps_a_bit_obsessed_with_material_design/
# and
# aur.sh (it's a website and a script)

# ##############################
#              i3              #
# ##############################

echo "Installing I3"

cd /tmp

# clone the repository
git clone https://www.github.com/JasonB579/i3lock_improved
cd i3lock_improved

cp i3lock_improved /usr/bin/i3lock_improved
cp i3lock_improved /usr/local/bin/i3lock_improved

cd -
rm -rf /tmp/i3lock_improved


mkdir -p $HOME/.config/i3

ln -sfv ${PACKAGE_INSTALL}/config/i3.config ${HOME}/.config/i3/config

# ##############################
#         XFCE Terminal        #
# ##############################

echo "Setting up xfce terminal"

mkdir -p $HOME/.config/xfce4/terminal/

ln -sfv ${PACKAGE_INSTALL}/config/terminalrc $HOME/.config/xfce4/terminal/

# ##############################
#            Rofi              #
# ##############################

echo "Setting up Rofi"

mkdir -p $HOME/.config/rofi/

ln -sfv ${PACKAGE_INSTALL}/config/rofi.config $HOME/.config/rofi/config

# ##############################
#            Misc              #
# ##############################

echo "Setting up shell scripts for the config"

ln -sfv ${PACKAGE_INSTALL}/scripts/bartermapp /usr/bin/bartermapp
