syntax on
colorscheme torte
set nocompatible "turning off compatibility with legacy vi"

set autoindent
set nostartofline       

set number             
set scrolloff=4       

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

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
au BufNewFile,BufRead *.ps1  setf ps1
au BufNewFile,BufRead *.psm1 setf ps1
au BufNewFile,BufRead *.config  setf xml
