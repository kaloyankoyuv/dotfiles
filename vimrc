source $VIMRUNTIME/defaults.vim

set viminfofile=~/.vim/viminfo
set background=dark
set number
set relativenumber
set cursorline
set hlsearch
set ignorecase
set smartcase

let mapleader = " "

colorscheme retrobox

nnoremap <leader>f :e `find -type f \\| dmenu -l 16`<cr>
