cmd.exe /C git submodule init
cmd.exe /C git submodule update
if exist ..\_vimrc ( 
    del ..\_vimrc
)
mklink /H ..\_vimrc %cd%\vimrc
