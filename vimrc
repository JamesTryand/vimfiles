"
" My .vimrc file
"
" Making an attempt clean and document my vimfile

" Pathogen needs to be to be the first thing in here
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"----------------------------------------------------------
" OS specific configuration
"----------------------------------------------------------

if has("win32")
   set directory=$TEMP
elseif has("unix")
   set directory=/tmp
endif

" enable file type detection
filetype on
filetype plugin on 
filetype indent on

" tabstops are 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" allows modified buffers to be hidden
set hidden

" not sure why I wouldn't ever want syntax on
syntax on

colorscheme molokai

" don't need to be vi compatible. We're not in the 60's anymore
set nocompatible

set nostartofline

set scrolloff=4

set listchars=trail:.

" show invisible characters like tabstops
set list

set wildmode=list:longest "make tab completion complete with common chars

set nobackup
set nowritebackup

" regex stuff. show the matches and search without case sensitivity
set showmatch
set ignorecase

set guifont=Consolas:h11

" set custom file types I've configured
autocmd BufNewFile,BufRead *.ps1  setf ps1
autocmd BufNewFile,BufRead *.psm1 setf ps1
autocmd BufNewFile,BufRead *.config  setf xml

"----------------------------------------------------------
" NERD Tree plugin settings
"----------------------------------------------------------

" toggle NERD Tree with CTRL N
nmap <silent> <c-n> :NERDTreeToggle<cr>

"----------------------------------------------------------
" status line stuff 
"----------------------------------------------------------

set laststatus=2 
if has("statusline") 
        set statusline=%<%f\ %h%m%r%=%k[%{(&fenc\ ==\ \"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %-12.(%l,%c%V%)\ %P 
endif 
