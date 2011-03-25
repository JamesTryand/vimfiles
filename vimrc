filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype on
filetype plugin indent on

if has("win32")
    source %USERPROFILE%\vimfiles\settings.vim
    source %USERPROFILE%\vimfiles\plugins.vim
    source %USERPROFILE%\vimfiles\mappings.vim
elseif has("unix")
    source $HOME/.vim/settings.vim
    source $HOME/.vim/plugins.vim
    source $HOME/.vim/mappings.vim
endif
