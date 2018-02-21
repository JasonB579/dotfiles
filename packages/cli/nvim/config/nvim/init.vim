"My init.vim is split into several files for the purposes of keeping things as
"modular and portable as possible

"Vundle stuff
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'lervag/vimtex'
"Plugin 'tpope/vim-fugitive'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'unblevable/quick-scope'
Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
"Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'mtth/scratch.vim'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Sourcing for all of my other settings
source ~/.config/nvim/colors/colorrc.vim
source ~/.config/nvim/nvimFiles/latex.vim
source ~/.config/nvim/nvimFiles/syntasticrc.vim
source ~/.config/nvim/nvimFiles/sniprc.vim
source ~/.config/nvim/nvimFiles/map.vim
source ~/.config/nvim/nvimFiles/general.vim
source ~/.config/nvim/nvimFiles/autocomp.vim
source ~/.config/nvim/nvimFiles/leader_short.vim
source ~/.config/nvim/nvimFiles/searching.vim
source ~/.config/nvim/nvimFiles/gitGutterrc.vim
source ~/.config/nvim/nvimFiles/ycmrc.vim
