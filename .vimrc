"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / | | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
"

""""""""""""""""""""""""""""""""""""
"              Plugins             "
""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" close a buffer without closing window
Plug 'rbgrouleff/bclose.vim'
" myriad of ways to comment in vim
Plug 'scrooloose/nerdcommenter'
" emacs-which-key... for VIM!!! :)
Plug 'liuchengxu/vim-which-key'
" a nicer modeline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" auto close pairs such as parens
Plug 'Raimondi/delimitMate'
" rename both buffer and buffer file
Plug 'danro/rename.vim'
" a file explorer... cool but not needed
" Plug 'scrooloose/nerdtree'
" change surrounding pairs
Plug 'tpope/vim-surround'

if has('python')
    " vim on bash for windows isn't built
    " with python support and so if you
    " install YouCompleteMe you'll just
    " keep getting startup error messages
    Plug 'Valloric/YouCompleteMe'
endif

""""""""""""""""""""""""""""""""""""
"              Themes              "
""""""""""""""""""""""""""""""""""""
" Plug 'drewtempelmeyer/palenight.vim'
" Plug 'ayu-theme/ayu-vim'
" Plug 'morhetz/gruvbox'
" Plug 'romainl/Apprentice'
Plug 'j-tom/vim-old-hope'

call plug#end()

""""""""""""""""""""""""""""""""""""
" Configuration Options/Variables  "
""""""""""""""""""""""""""""""""""""
colorscheme old-hope
syntax on " enable syntax highlighting

"let &background = "dark"
set number         " enable line numbers
set relativenumber " make them relative
set noautoindent   " no auto indenting
set ff=unix        " preffered file format
set encoding=utf8

set backspace=indent,eol,start " allow backspace in insert mode
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set nocompatible " disable early vim compatibility features
set whichwrap+=<,>,h,l,[,] " move to previous or next line

if $TERM != "cygwin"
    " doesn't play well with cygwin
    set termguicolors
else
    " use a block cursor
    let &t_ti.="\e[1 q"
    let &t_SI.="\e[5 q"
    let &t_EI.="\e[1 q"
    let &t_te.="\e[0 q"
endif

""""""""""""""""""""""""""""""""""""
"         custom bindings          "
""""""""""""""""""""""""""""""""""""

" use C-g as an alias for escape
"" doesn't work for insert mode or which-key
cnoremap <C-g> <Esc>      " command line mode
nnoremap <C-g> <Esc>      " normal mode
vnoremap <C-g> <Esc>gV    " visual & select mode
onoremap <C-g> <Esc>      " operator pending mode
cnoremap <C-g> <C-C><Esc> " command line mode
" inoremap <C-g> <Esc>`^
" nnoremap <Leader><C-g> :call which_key#window#close()<cr>

" some nostalgic emacs like bindings
inoremap <C-a>  <C-o>0
inoremap <C-e>  <C-o>$
cnoremap <C-a>  <Home>
cnoremap <C-e>  <End>
imap     <C-y>  <C-o>p

""""""""""""""""""""""""""""""""""""
"           leader keys            "
""""""""""""""""""""""""""""""""""""
let mapleader       = ' '
let maplocalleader  = '<leader>m'
let g:which_key_map = {}

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" Manipulate This Configuration File
nnoremap <leader>fvc :tabedit ~/.vimrc<cr>
nnoremap <leader>fvr :source  ~/.vimrc<cr>

" Select All with Ctrl+A
nnoremap <c-a> ggVGo

""""""""""""""""""""""""""""""""""""
"         leader prefixes          "
""""""""""""""""""""""""""""""""""""
let g:which_key_map.f = { 'name' : '+files' }
let g:which_key_map.c = { 'name' : '+compile/comments' }
let g:which_key_map.b = { 'name' : '+buffers' }

call which_key#register('<Space>', 'g:which_key_map')
