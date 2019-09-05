"My init.vim is split into several files for the purposes of keeping things as
"modular and portable as possible

"Sourcing for all of my settings
if filereadable(expand("~/.config/nvim/vundle.vim"))
	source ~/.config/nvim/vundle.vim
endif
source ~/dotfiles/packages/cli/nvim/config/nvim/colors/colorrc.vim
source ~/dotfiles/packages/cli/nvim/config/nvim/nvimFiles/syntasticrc.vim
source ~/dotfiles/packages/cli/nvim/config/nvim/nvimFiles/sniprc.vim
source ~/dotfiles/packages/cli/nvim/config/nvim/nvimFiles/map.vim
source ~/dotfiles/packages/cli/nvim/config/nvim/nvimFiles/general.vim
source ~/dotfiles/packages/cli/nvim/config/nvim/nvimFiles/leader_short.vim
source ~/dotfiles/packages/cli/nvim/config/nvim/nvimFiles/searching.vim
source ~/dotfiles/packages/cli/nvim/config/nvim/nvimFiles/ycmrc.vim
source ~/dotfiles/packages/cli/nvim/config/nvim/nvimFiles/lightLinerc.vim
source ~/dotfiles/packages/cli/nvim/config/nvim/nvimFiles/filetype.vim
