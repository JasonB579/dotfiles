#!/bin/sh

# brew install for osx

# install brew
which -s brew
if [[ $? != 0 ]] ; then
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# prepare brew
brew tap caskroom/cask
brew install brew-cask
brew tap homebrew/versions

# update brew
brew update
brew upgrade

apps=(
	cmake
    git
    gnu-sed --default-names
    grep --default-names
    htop-osx
    perl
    python
    vim
    wget
)

brew install ${apps[@]}