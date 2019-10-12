" Plugins
call plug#begin('~/.vim/plugged')
Plug 'drewtempelmeyer/palenight.vim'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

" syntax and color
syntax on " syntax coloring
set background=dark
colorscheme palenight
set termguicolors " true color ignore terminal color changes
set nu " line number

" spaces
filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

" navigation
set backspace=indent,eol,start
map tn :tabnew<Space>


" CtrlP improvements
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 40
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('find')
  let g:ctrlp_user_command = 'find %s -type f'
endif

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*,*/node_modules/*,*/priv/*
