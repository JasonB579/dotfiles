"Various vimtex settings

let g:tex_flavor='latex'

let g:vimtex_view_general_viewer = 'evince'

"let g:vimtex_compiler_progname='nvr'

let g:vimtex_fold_enabled=1

let g:vimtex_toc_fold=1

" Testing Tex stuff (not really sure what it does yet)
if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif

augroup latex
    autocmd!
    autocmd FileType tex setlocal spell spelllang=en_us
    autocmd BufWinEnter *.tex :VimtexCompile
augroup END

