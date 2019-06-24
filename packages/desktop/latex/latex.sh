#!/bin/bash

########################################
# Base install of LaTeX
# A Markup Language
########################################


mkdir -p ${HOME}/.config/nvim/ftplugin
ln -sfv "${PACKAGE_INSTALL}/config/.latexmkrc" ${HOME}
ln -sfv "${PACKAGE_INSTALL}/config/latex.vim" ${HOME}/.config/nvim/ftplugin/tex.vim
ln -sfv "${PACKAGE_INSTALL}/config/zathurarc" ${HOME}/.config/zathura/
ln -sfv "${PACKAGE_INSTALL}/config/tex.snippets" ${HOME}/.config/nvim/UltiSnips/tex.snippets

# Vimtex needs --remote in vim, so this puts it back for neovim
pip3 install --user neovim-remote

# Reinstall plugins for vimtex
nvim +PluginInstall +qall
echo "NOTE: For spell checking to run properly \":set spell\" (without quotes) will need to be run the first time a .tex file is opened. After that, it will work properly."
