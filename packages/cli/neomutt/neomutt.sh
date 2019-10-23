#!/bin/bash

########################################
# Base install of neomutt
########################################

echo "Backing up previous neomutt config"

if [ -r "${HOME}/.mailrc" ]; then
        mv ${HOME}/.mailrc ${HOME}/.dotfiles-bak/
fi
if [ -r "${HOME}/.mbsyncrc" ]; then
        mv ${HOME}/.mbsyncrc ${HOME}/.dotfiles-bak/
fi
if [ -r "${HOME}/.config/mutt" ]; then
        mv ${HOME}/.config/neomutt ${HOME}/.dotfiles-bak/
fi


# mutt-wizard install
cd /tmp
git clone https://github.com/LukeSmithxyz/mutt-wizard.git
cd mutt-wizard
sudo make install
cd -
rm -rf /tmp/mutt-wizard

# my configs
ln -sfv "${PACKAGE_INSTALL}/config/mailcap" "${HOME}/.config/mutt/mailcap"
ln -sfv "${PACKAGE_INSTALL}/config/muttrc" "${HOME}/.config/mutt/muttrc"

# mail snippets for vim
ln -sfv "${PACKAGE_INSTALL}/config/mail.snippets" "${HOME}/.config/nvim/UltiSnips/mail.snippets"
