#!/bin/bash

echo "Installing Compton"

sudo pacman -S --noconfirm --needed libx11 libxcomposite libxdamage libxfixes libxext libxrender libxrandr libxinerama xproto xorg-xprop xorg-xwininfo libconfig libdrm asciidoc

cd /tmp

git clone https://github.com/tryone144/compton.git
cd compton

make
make docs
make install

cd -
rm -rf /tmp/compton
