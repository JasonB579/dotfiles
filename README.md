# JBlocklove's Dotfiles

Forked from Serubin's Dotfiles.

The purpose of this dotfiles configuration is to store/replicate my own configuration. It can be as lightweight or as bloated as you choose to make it, as you can choose to which of my main programs to install.

You'll find within this repository my personal configuration: Although it may not be to everyone's liking I think it's a very solid foundation to creating a comfortable and mostly bug free development environment. A lot of the issues people run into when setting up their own dev-envs have already been solved here. An excellent example of this is getting colored nvim to work in tmux. 

Many of the programs here are configured to work for most of the common linux distributions as well as macOS, but all are currectly configured to work properly with Arch. In time I hope to get them working for all distros (probably by having most/all of the programs built from source), but that's a ways away at the moment.

Whether you use this as a resource for creating your own dotfiles or you use this configuration and make it your own, I hope that you find it helpful and will consider contributing.

## Installation

Installing is fairly straight forward, just clone the repo and place it anywhere and use the install script provided.
```bash
git clone --recursive https://github.com/JBlocklove/dotfiles.git ~/.dotfiles && cd ~/.dotfiles && ./install.sh
```
To update run ``` ./install.sh -u```
To install without interactivity run ``` ./install.sh -i <package1,package2> ``` (Still in progress)
To list installed packages run ``` ./install.sh -l```
In order to change the location of the installation you will have to re-run the install script with ``` ./install.sh ```


## OS Support
### Most programs working
* OS X (with brew)
* Debian
* Ubuntu
* Fedora
### All programs working
* Arch

The install script takes care of all the pre-requisites excluding git, bash, lsb-release, and sudo. However this only works with OSX, Arch,  Debian, and Ubuntu (for the moment). 

For all *linux* distributions
*The script will not be able to detect your os without ```lsb-release```, make sure to install it*

In OS X the script will install brew and all needed components. 

## General overview

Settings in `~/.dotfiles.info`

#### Bash/ZSH
* Custom Themeing
 * Set in dotfiles.info
*   Aliases (listed in packages/shell/common/run/.alias)
*   Functions to make life easy (listed in packages/shell/common/run/.function) 

#### ZSH
* Custom Themeing
 * Set in dotfiles.info
* Autocompletion while typing
* dynamic syntax highlighting

#### git
* Up to date! (Mostly looking at debian/ubuntu)
* Global ignore
* Git Aliases (listed in packages/cli/git/config/.gitconfig)

#### Vim
* "Smart" features
* Shortcuts
* Line numbers (relative and standard)
* Intelligent ignores
* lightline
* YouCompleteMe
* Presistent undo
* Various completion packages

## Design overview

```
/
+-- README.md
+-- LICENSE
+-- install.sh          <-- Main script
+-- common/             <-- Common files - shared and third party
|    +-- .custom        <-- Custom input file (copied to ~)
|    +-- <third-party-repos>/ 
+-- packages/
     +-- shell/
     +-- cli/
     +-- desktop/
+-- util/
```

