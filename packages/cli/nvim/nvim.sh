#!/bin/bash

########################################
# Base install of vim
# ViImproved
########################################

echo "Backing up previous nvim config"

# TODO not working for sum reason.
if [ -r "${HOME}/.config/nvim" ]; then
    if [ -r "${HOME}/.dotfiles-bak/.nvim" ]; then
        rm -rf ${HOME}/.dotfiles-bak/.nvim 2> /dev/null
    fi

	mv -f ${HOME}/.config/nvim ${HOME}/.dotfiles-bak/ 2> /dev/null
fi

# config install

mkdir -p ${HOME}/.config/nvim/
ln -sfv "${PACKAGE_INSTALL}/config/init.vim" ~/.config/nvim/
ln -sfv "${PACKAGE_INSTALL}/config/colors" ~/.config/nvim/
ln -sfv "${PACKAGE_INSTALL}/config/plug.vim" ~/.config/nvim
ln -sfv "${PACKAGE_INSTALL}/config/configs" ~/.config/nvim


if [ "$DISTRO" == "Arch" ]; then # work around for arch, because smart python linking.
    python2_path=`which python`
else
    python2_path=`which python3`
fi
sed -i -e 's#%python-path%#'${python2_path}'#g' ${PACKAGE_INSTALL}/config/nvim/nvimFiles/python.vim


PLUGGED_DIR=${HOME}/.config/nvim/plugged

# Install/update vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install bundles
nvim +PlugInstall +qall

echo "Compiling ycm"
# Compile YouCompleteMe
cd "${PLUGGED_DIR}/YouCompleteMe"

if [ "$DISTRO" == "Arch" ]; then # work around for arch, because smart python linking.
    /usr/bin/env python2 install.py --clang-completer --system-libclang
else
    /usr/bin/env python2 install.py
fi

cd -

# Removing variables
unset PLUGGED_DIR
