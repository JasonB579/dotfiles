"Various vimtex settings

let g:tex_flavor = "latex"

let g:vimtex_view_general_viewer = 'evince'

let g:vimtex_compiler_progname='~/.local/bin/nvr'

let g:vimtex_fold_enabled=1

let g:vimtex_toc_fold=1

augroup latex
    autocmd!
    autocmd FileType tex setlocal spell spelllang=en_us
    autocmd BufWinEnter *.tex :VimtexCompile
augroup END

