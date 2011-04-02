syntax on
scriptencoding utf-8
colorscheme molokai
set nocompatible "turning off compatibility with legacy vi"

set nobomb
set encoding=utf-8
set fileencoding=utf-8

set autoindent
set nostartofline

set number
set scrolloff=4

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set listchars=trail:·,precedes:«,extends:»,eol:¬,tab:▸\ 
set list

set nobackup
set nowritebackup

if has("win32")
   set directory=$TEMP
elseif has("unix")
   set directory=/tmp
endif

set showmatch
set ignorecase

set guifont=Consolas:h11

" set custom file types I've configured
autocmd BufNewFile,BufRead *.ps1  setf ps1
autocmd BufNewFile,BufRead *.psm1 setf ps1
autocmd BufNewFile,BufRead *.config  setf xml

nmap <silent> <c-n> :NERDTreeToggle<cr>
