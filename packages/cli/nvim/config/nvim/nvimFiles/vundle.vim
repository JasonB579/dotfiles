"Vundle stuff
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('$HOME/.config/nvim/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ntpeters/vim-better-whitespace'
Plugin 'unblevable/quick-scope'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'itchyny/lightline.vim'
Plugin 'junegunn/fzf'
Plugin 'papis/papis-vim'

if filereadable(expand("~/.config/nvim/ftplugin/tex.vim"))
	" Vimtex
	Plugin 'lervag/vimtex'
endif

if filereadable(expand("~/.config/nvim/ftplugin/vhdl.vim"))
	Plugin 'JBlocklove/VIP'
endif





" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


