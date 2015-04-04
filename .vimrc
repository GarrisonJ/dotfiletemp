execute pathogen#infect()
syntax on
filetype plugin indent on
" Tab specific option
set shell=/bin/sh
set tabstop=8                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=2               "Insert 4 spaces when tab is pressed
set shiftwidth=4                "An indent is 4 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple


map <silent> <Leader>e :Errors<CR>
map <Leader>s :SyntasticToggleMode<CR>

let g:syntastic_auto_loc_list=1

au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>
au FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsInfo<CR>

au FileType lhaskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType lhaskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>
au FileType lhaskell nnoremap <buffer> <silent> <F3> :HdevtoolsInfo<CR>

nmap <F8> :TagbarToggle<CR>A

let s:width = 80

function! HaskellModuleSection(...)
    let name = 0 < a:0 ? a:1 : inputdialog("Section name: ")

    return  repeat('-', s:width) . "\n"
    \       . "--  " . name . "\n"
    \       . "\n"

endfunction

nmap <silent> --s "=HaskellModuleSection()<CR>gp

:colorscheme elflord
