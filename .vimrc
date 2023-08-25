source $VIMRUNTIME/defaults.vim

colorscheme retrobox

set background=dark
set number
set relativenumber
set cursorline
set hlsearch
set ignorecase
set smartcase

nnoremap <leader>f :e `find -type f \\| dmenu -i -l 15`<cr>
