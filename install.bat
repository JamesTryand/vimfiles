cmd.exe /C git submodule init
cmd.exe /C git submodule update
cmd.exe /C rd /S /Q bundle\lusty
cmd.exe /C copy vimrc ..\_vimrc
