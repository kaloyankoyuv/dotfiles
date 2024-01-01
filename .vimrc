source $VIMRUNTIME/defaults.vim

colorscheme retrobox

set number
set relativenumber
set cursorline
set hlsearch
set ignorecase
set smartcase
set hidden
set expandtab
set tabstop=2
set shiftwidth=2
set background=dark

nnoremap <leader>f :!clang-format -i %<cr>
nnoremap <leader>e :!g++ % && ./a.out && rm a.out<cr>
