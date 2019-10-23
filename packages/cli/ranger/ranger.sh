#!/bin/bash

##############################
# Base install of Ranger
##############################

#config install
mkdir -p $HOME/.config/ranger
ln -sfv "${PACKAGE_INSTALL}/config/ranger/commands.py" ${HOME}/.config/ranger
ln -sfv "${PACKAGE_INSTALL}/config/ranger/commands_full.py" ${HOME}/.config/ranger
ln -sfv "${PACKAGE_INSTALL}/config/ranger/rc.conf" ${HOME}/.config/ranger
ln -sfv "${PACKAGE_INSTALL}/config/ranger/rifle.conf" ${HOME}/.config/ranger
ln -sfv "${PACKAGE_INSTALL}/config/ranger/scope.sh" ${HOME}/.config/ranger
ln -sfv "${PACKAGE_INSTALL}/config/ranger/extract.sh" ${HOME}/.config/ranger

git clone https://github.com/alexanderjeurissen/ranger_devicons ${HOME}/.config/ranger
cd ${HOME}/.config/ranger/ranger_devicons
make install
cd -
