"My init.vim is split into several files for the purposes of keeping things as
"modular and portable as possible

filetype plugin on

"Sourcing for all of my settings
if filereadable(expand("~/.config/nvim/plug.vim"))
	source ~/.config/nvim/plug.vim
endif

source ~/.config/nvim/colors/colorrc.vim
"source ~/.config/nvim/configs/syntasticrc.vim
source ~/.config/nvim/configs/ale.vim
source ~/.config/nvim/configs/sniprc.vim
source ~/.config/nvim/configs/map.vim
source ~/.config/nvim/configs/general.vim
source ~/.config/nvim/configs/searching.vim
source ~/.config/nvim/configs/ycmrc.vim
source ~/.config/nvim/configs/lightLinerc.vim
source ~/.config/nvim/configs/filetype.vim


"source ~/dotfiles/packages/cli/nvim/config/nvim/colors/colorrc.vim
"source ~/dotfiles/packages/cli/nvim/config/nvim/nvimFiles/syntasticrc.vim
"source ~/dotfiles/packages/cli/nvim/config/nvim/nvimFiles/sniprc.vim
"source ~/dotfiles/packages/cli/nvim/config/nvim/nvimFiles/map.vim
"source ~/dotfiles/packages/cli/nvim/config/nvim/nvimFiles/general.vim
"source ~/dotfiles/packages/cli/nvim/config/nvim/nvimFiles/searching.vim
"source ~/dotfiles/packages/cli/nvim/config/nvim/nvimFiles/ycmrc.vim
"source ~/dotfiles/packages/cli/nvim/config/nvim/nvimFiles/lightLinerc.vim
"source ~/dotfiles/packages/cli/nvim/config/nvim/nvimFiles/filetype.vim
