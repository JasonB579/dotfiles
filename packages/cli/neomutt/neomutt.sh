#!/bin/bash

########################################
# Base install of neomutt
########################################

echo "Backing up previous neomutt config"

if [ -r "${HOME}/.msmtprc" ]; then
        mv ${HOME}/.msmtprc ${HOME}/.dotfiles-bak/
fi
if [ -r "${HOME}/.msmtp" ]; then
        mv ${HOME}/.msmtp ${HOME}/.dotfiles-bak/
fi
if [ -r "${HOME}/.offlineimap" ]; then
        mv ${HOME}/.msmtprc ${HOME}/.dotfiles-bak/
fi
if [ -r "${HOME}/.offlineimaprc" ]; then
        mv ${HOME}/.msmtprc ${HOME}/.dotfiles-bak/
fi
if [ -r "${HOME}/.config/neomutt" ]; then
        mv ${HOME}/.config/neomutt ${HOME}/.dotfiles-bak/
fi


# mutt-wizard install
git clone https://github.com/JasonB579/mutt-wizard.git ${HOME}/.config/neomutt

# mail snippets for vim
ln -sfv "${PACKAGE_INSTALL}/config/mail.snippets" "${HOME}/.config/nvim/UltiSnips/mail.snippets"
