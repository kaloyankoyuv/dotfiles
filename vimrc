source $VIMRUNTIME/defaults.vim

set viminfofile=~/.vim/viminfo

set number
set relativenumber
set cursorline

set hlsearch
set ignorecase
set smartcase

set background=dark
colorscheme retrobox

nnoremap <leader>f :e `find -type f \\| dmenu -l 16`<cr>
