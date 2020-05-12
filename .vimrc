set term=xterm

filetype plugin indent on
syntax on

set number
set smarttab
set expandtab

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-github-dashboard'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'valloric/youcompleteme'


call plug#end()
