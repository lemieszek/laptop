" Plugins
call plug#begin('~/.vim/plugged')
" Theme
Plug 'drewtempelmeyer/palenight.vim'

" Utils
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'

" Language Client
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-prettier', 'coc-json', 'coc-tsserver']

" TypeScript Highlighting
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'elixir-editors/vim-elixir'

" Files
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
" Search
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" syntax and color
syntax enable " syntax coloring
filetype plugin on
set nocompatible

" finding files
set path+=**
set wildmode=longest,list,full
set wildmenu

" coloring
if (has("termguicolors"))
 set termguicolors
endif

colorscheme palenight
set background=dark

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

" Set to use clipboard
set clipboard=unnamedplus
" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Easymotion
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
" Enter will hide selection:
nnoremap <CR> :noh<CR><CR>

" Coc.nvim
inoremap <silent><expr> <c-space> coc#refresh()


" NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle %<CR>

" FZF setup 
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-g> :GFiles<CR>
nnoremap <silent> <C-o> :Buffers<CR>
nnoremap <C-f> :Rg! 

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" Search
set ignorecase      " searches are case insensitive...
set smartcase       " ... unless they contain at least one capital letter

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*,*/node_modules/*,*/priv/*,*/elixir_ls/*

" Terminal
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

