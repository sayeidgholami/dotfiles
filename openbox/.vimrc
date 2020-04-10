
" Vim Plug
call plug#begin('~/.vim/plugged')

" Nord theme 
Plug 'arcticicestudio/nord-vim'

call plug#end()


" Vim config
syntax enable
set number
colorscheme nord

" When searching try to be smart about cases 
set smartcase
" Highlight search results
set hlsearch
" " Makes search act like search in modern browsers
set incsearch 


" Show matching brackets when text indicator is over them
set showmatch 
" " How many tenths of a second to blink when matching brackets
set mat=2


" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent


