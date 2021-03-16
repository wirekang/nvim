set nocompatible
set autoread
set nowrap
set shortmess+=c
set nobackup
set noswapfile
set nowrapscan
set shiftwidth=2
set expandtab
set tabstop=2
syntax on
set history=1000
set mouse-=a
set fileencoding=utf-8
set hlsearch
set ignorecase
set incsearch
set hidden
set autoindent
set smartindent
set nu
set relativenumber
set signcolumn=yes
set cmdheight=2
set laststatus=2
set cursorline
set updatetime=100
inoremap jj <Esc>
let mapleader=" "
set colorcolumn=90
inoremap <c-space> <Nop>
noremap <c-space> <Nop>
tnoremap <esc> <c-\><c-n>

noremap <leader>tl :<c-u>tabnext<cr>
noremap <leader>th :<c-u>tabprevious<cr>
noremap <leader>tn :<c-u>tabnew<cr>
noremap <leader>td :<c-u>tabclose<cr>

noremap <leader>bl :<c-u>bnext<cr>
noremap <leader>bh :<c-u>bprevious<cr>
noremap <leader>bd :<c-u>bdelete<cr>
noremap <leader>bfd :<c-u>bdelete!<cr>
noremap <leader>ba :<c-u>%bdelete<cr>
noremap <leader>bn :<c-u>badd [No Name]<cr>:<c-u>blast<cr>
noremap <leader>bL :<c-u>blast<cr>
noremap <leader>bH :<c-u>bfirst<cr>

noremap <leader>wh <c-w>h
noremap <leader>wj <c-w>j
noremap <leader>wk <c-w>k
noremap <leader>wl <c-w>l
noremap <leader>ws :<c-u>split<cr>
noremap <leader>wv :<c-u>vsplit<cr>
noremap <leader>wp :<c-u>res +16<cr>
noremap <leader>wn :<c-u>res -16<cr>
noremap <leader>wP :<c-u>vertical res +16<cr>
noremap <leader>wN :<c-u>vertical res -16<cr>

noremap <leader>cs :<c-u>w<cr>:<c-u>so $MYVIMRC<cr>

noremap <leader>cr :<c-u>set relativenumber!<cr>
