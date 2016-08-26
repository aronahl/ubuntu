:set number
:set autoindent
:set tabstop=4
:set expandtab
:set shiftwidth=4
:syntax on
:colo murphy
:au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
set nocompatible
filetype plugin on
