set term=xterm

filetype plugin indent on
syntax on

syntax enable
set background=dark
colorscheme solarized

set number
set smarttab
set expandtab

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'junegunn/vim-github-dashboard'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'valloric/youcompleteme'
Plug 'altercation/vim-colors-solarized'

call plug#end()
