#!/bin/bash

##############################
# Base install of Ranger
##############################

#config install
mkdir -p $HOME/.config/ranger
ln -sfv "${PACKAGE_INSTALL}/config/ranger ${HOME}/.config/ranger"
