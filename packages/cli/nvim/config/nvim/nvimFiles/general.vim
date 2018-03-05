"This file is where I put stuff that I couldn't think fit anywhere else
"
"Set syntax on
syntax on

set tabstop=4

set autoindent

set noexpandtab

set shiftwidth=4

set softtabstop=4

set modelines=0

set encoding=utf-8

set title

set hidden

set autoread

set scrolloff=8
"number setting toggle
set number
set relativenumber
function! NumberToggle()
  if(&relativenumber == 1)
    set number
	set norelativenumber
  else
	set number
    set relativenumber
	"set nonumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

au FocusLost * :wa

"sets line numbers to dark grey so they don't blend in with actual text
hi LineNr ctermfg=DarkGrey
