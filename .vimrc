source $VIMRUNTIME/defaults.vim

colorscheme retrobox
set background=dark

set number
set relativenumber
set cursorline

set laststatus=2

set hlsearch
set ignorecase
set smartcase

set expandtab
set tabstop=2
set shiftwidth=2

let g:mapleader=" "
let g:netrw_liststyle=3
let g:netrw_banner=0

nnoremap <leader>n :Lex<cr>
nnoremap <leader>f :!clang-format -i %<cr>
nnoremap <leader>e :!g++ % && ./a.out && rm a.out<cr>
