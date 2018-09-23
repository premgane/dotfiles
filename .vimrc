set term=xterm

filetype plugin indent on
syntax on

set number

" https://hamberg.no/erlend/posts/2014-03-09-change-vim-cursor-in-iterm.html
" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

