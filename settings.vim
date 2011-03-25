colorscheme torte

set autoindent
set nocompatible
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
   set directory=c:\\tmp,c:\\temp
elseif has("unix")
   set directory=/tmp
endif

set showmatch
set ignorecase

set guifont=Consolas:h11
