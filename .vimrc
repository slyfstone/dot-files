filetype plugin indent on

syntax on

set hlsearch
set ignorecase

set autoindent

set ruler
set number
set wildmenu
set showcmd

set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4
set smarttab

set clipboard=unnamed

nnoremap ; :
nnoremap : ;

if has('vim_starting')
    set nocompatible    " Be iMproved
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif


call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc.vim', {
            \ 'build' : {
            \     'windows' : 'tools\\update-dll-mingw',
            \     'cygwin' : 'make -f make_cygwin.mak',
            \     'mac' : 'make',
            \     'linux' : 'make',
            \     'unix' : 'gmake',
            \    },
            \ }
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'fatih/vim-go'

let g:vimfiler_as_default_explorer = 1
autocmd VimEnter * VimFiler -split -simple -winwidth=30 -no-quit
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

call neobundle#end()
filetype plugin indent on

NeoBundleCheck
