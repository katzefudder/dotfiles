set nocompatible

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" The mapleader is a custom defined leader key under which
" you can place your mappings.
let mapleader=","
nmap <silent> <leader>/ :nohlsearch<CR>
nmap <leader>t :FufTag<CR>
nmap <leader>k :FufFile<CR>
nmap <leader>j :FufBuffer<CR>
nmap <leader>l :FufBufferTag<CR>

filetype off " file type detection is off... why?
" filetype plugin indent on

set t_Co=256 " set the terminal to 256 color mode
set modelines=0
set guicursor=a:blinkon0 

" Parser check
:autocmd FileType php noremap <C-L> :!/opt/lampp/bin/php -l %<CR>
:autocmd FileType php noremap <C-P> :!/opt/lampp/bin/php %<CR>

" Respect automatic line breaks when going up or down
" on very long lines.
nnoremap j gj
nnoremap k gk

" Make vim run execute_on_save.sh on save if an execute_on_save.sh 
" exeutable exists in current pwd ...
if executable('./execute_on_save.sh')
	autocmd BufWritePost * :call system('./execute_on_save.sh')
endif

" Do not add an automatic new line for PHP files
autocmd BufRead *.php :set binary
autocmd BufRead *.php :set noendofline

" map <C-j> :FufBuffer <Return>
" map <C-k> :FufFile <Return>

set wildmenu
set showmode
set hlsearch
set incsearch
set tabstop=4
set shiftwidth=4
set ignorecase
set smartcase
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
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

set modeline
set modelines=4 

set list
syntax on

" Window width for NERDtree
let g:NERDTreeWinSize=50
map <F2> :NERDTreeToggle<cr>

" Window size for taglist
let Tlist_WinWidth=50
let Tlist_Use_Right_Window=1
map <F4> :TlistToggle<cr>
map <F3> <C-]> 

" Visible whitespace
" use :set list and :set nolist
set listchars=tab:▸\ ,eol:¬

" Settings for vimdiff
if &diff
	" colorscheme evening
	set filetype=php
endif

" Nice colorscheme	
colorscheme mustang
hi CursorLine cterm=none " Overwrite cursor line style
set cursorline

" Syntastic syntax checker
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['php', 'python', 'xml'], 'passive_filetypes': ['sh'] }

" Closetag vim
 :au Filetype html,xml,xsl,ctp,php source ~/.vim/bundle/closetag/closetag.vim

" Powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" This highlights the background from column 100 on
function! Columns()
	highlight ColorColumn ctermbg=235 guibg=#2c2d27
	let &colorcolumn="100,".join(range(100,999),",")
endfunction

