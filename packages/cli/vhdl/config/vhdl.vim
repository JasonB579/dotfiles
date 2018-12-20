" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
    finish
endif

let g:vhdl_indent_genportmap = 0 " Keeps Vim from indenting port maps too much
let g:HDL_Clock_Period = 10
let g:HDL_Author = system("git config --global user.name")

nnoremap <leader>C <Plug>SpecialVHDLPasteComponent
nnoremap <leader>I <Plug>SpecialVHDLPasteInstance
nnoremap <leader>E <Plug>SpecialVHDLPasteEntity

" Simple shortcuts from https://github.com/salinasv/vim-vhdl/
"augroup vhdl_abbrevs
	"autocmd!
	autocmd FileType vhdl iabbrev <buffer> dt downto
	autocmd FileType vhdl iabbrev <buffer> sig signal
	autocmd FileType vhdl iabbrev <buffer> gen generate
	autocmd FileType vhdl iabbrev <buffer> ot others
	autocmd FileType vhdl iabbrev <buffer> sl std_logic
	autocmd FileType vhdl iabbrev <buffer> slv std_logic_vector
	autocmd FileType vhdl iabbrev <buffer> uns unsigned
	autocmd FileType vhdl iabbrev <buffer> toi to_integer
	autocmd FileType vhdl iabbrev <buffer> tos to_unsigned
	autocmd FileType vhdl iabbrev <buffer> tou to_unsigned
"augroup END
