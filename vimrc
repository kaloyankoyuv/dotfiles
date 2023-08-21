source $VIMRUNTIME/defaults.vim

colorscheme retrobox

set viminfofile=~/.vim/viminfo
set background=dark
set number
set relativenumber
set cursorline
set hlsearch
set ignorecase
set smartcase

nnoremap <leader>f :e `find -type f \\| dmenu -l 16`<cr>
