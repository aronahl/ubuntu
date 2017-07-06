set number
set autoindent
set tabstop=4
set expandtab
set shiftwidth=4
syntax on
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
set nocompatible
filetype plugin on
set modeline
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
call plug#end()
colo gruvbox
set background=dark
