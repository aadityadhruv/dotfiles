set runtimepath^=~/.vim runtimepath+=~/.vim/after runtimepath+=~/.config/nvim
let &packpath=&runtimepath
source ~/.vimrc
lua require('nvim')

