#!/bin/sh

echo "Starting Serubin's dotfile install..."
# Get current dir (so run this script from anywhere)
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Backing up current configurations
echo "Moving previous configurations to dotfiles/bak/"
mkdir $DOTFILES_DIR/bak

if [ -r "$HOME/.bash_profile" ]; then
	mv $HOME/.bash_profile $HOME/.dotfiles-bak/
fi

if [ -r "$HOME/.bashrc" ]; then
	mv $HOME/.bashrc $HOME/.dotfiles-bak/
fi

if [ -r "$HOME/.inputrc" ]; then
	mv $HOME/.inputrc $HOME/.dotfiles-bak/
fi

if [ -r "$HOME/.gitconfig" ]; then
	mv $HOME/.gitconfig $HOME/.dotfiles-bak/
fi

if [ -r "$HOME/.gitconfig_global" ]; then
	mv $HOME/.gitconfig_global $HOME/.dotfiles-bak/
fi

if [ -r "$HOME/.vim" ]; then
	mv $HOME/.vim $HOME/.dotfiles-bak/
fi

if [ -r "$HOME/.vimrc" ]; then
	mv $HOME/.vimrc $HOME/.dotfiles-bak/
fi

echo "Creating symlinks"
# Bunch of symlinks
ln -sfv "$DOTFILES_DIR/runcom/.bashrc" ~
ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/runcom/.inputrc" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~ # needs creation
ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~
mkdir -p ~/.vim/
ln -sfv "$DOTFILES_DIR/vim/vundle.vim" ~/.vim/

if [ ! -r "$HOME/.custom" ]; then
	cp $DOTFILES_DIR/bash/.custom  ~
fi
source install/vim.sh

source install/sublime/sublime.osx

source ~/.bashrc

# Removing variables
unset DOTFILES_DIR
