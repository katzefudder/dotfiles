set nocompatible

execute pathogen#infect()
syntax on
filetype plugin indent on

"start NERDTreeper default"
" autocmd VimEnter * NERDTree

set t_Co=256 " set the terminal to 256 color mode
set modelines=0
set guicursor=a:blinkon0 

set wildmenu
set showmode
set hlsearch
set incsearch
set tabstop=4
set shiftwidth=4
set ignorecase
set smartcase
" set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
" set showmatch
set backspace=indent,eol,start
set nofoldenable
set number
set ruler
set showcmd
set smartindent
set hidden
set title
set nobackup
set noswapfile
set laststatus=2
set paste

set modeline
set modelines=4 

set list

" Visible whitespace
" use :set list and :set nolist
set listchars=tab:▸\ ,eol:¬