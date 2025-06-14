set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set bs=2
set tabstop=8
set softtabstop=8
set textwidth=80
set shiftwidth=4 smarttab
set expandtab
set t_Co=256
set number
set ruler

nnoremap <C-Left> :bp<CR>
nnoremap <C-Right> :bn<CR>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
noremap <C-f> :Files  <CR>
map <C-l> :Lines <CR>
noremap <C-b> :Buffers <CR>

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-obsession'
Plugin 'neoclide/coc.nvim'
Plugin 'sainnhe/gruvbox-material'

let g:AutoClosePreserveDotReg = 0
let g:gruvbox_material_background = 'hard'

set background=dark
colorscheme gruvbox-material
call vundle#end()
filetype plugin indent on
syntax enable
