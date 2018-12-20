#!/bin/bash

########################################
# Base install of calcurse
########################################

echo "Backing up previous calcurse config"

if [ -r "${HOME}/.calcurse" ]; then
        mv ${HOME}/.calcurse ${HOME}/.dotfiles-bak/
fi

#config install
ln -sfv "${PACKAGE_INSTALL}/config/calcurse" ~/.calcurse
