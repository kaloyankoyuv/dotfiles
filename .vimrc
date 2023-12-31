source $VIMRUNTIME/defaults.vim

colorscheme retrobox

set background=dark
set number
set relativenumber
set cursorline
set hlsearch
set ignorecase
set smartcase
set expandtab
set tabstop=2
set shiftwidth=2

nnoremap <leader>f :!clang-format -i %<cr>
nnoremap <leader>e :!g++ % && ./a.out && rm a.out<cr>
