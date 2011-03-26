filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

if has("win32")
    source $USERPROFILE\vimfiles\settings.vim
elseif has("unix")
    source $HOME/.vim/settings.vim
endif
