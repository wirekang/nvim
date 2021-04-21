set nocompatible
set nowrap
set shortmess+=c
set noswapfile
set nowrapscan
set shiftwidth=2
set expandtab
set tabstop=2
set history=1000
set mouse-=a
set fileencoding=utf-8
set hlsearch
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
set colorcolumn=90
set timeoutlen=400
set lazyredraw
set encoding=utf-8 nobomb
set scrolloff=5
set noerrorbells
set backupdir=~/.cache/nvim
set nostartofline
set sidescroll=1
set visualbell
set cursorcolumn
set clipboard=unnamedplus
syntax on


set autoread
au CursorHold * checktime

tnoremap <esc> <c-\><c-n>

let mapleader=" "

nnoremap <c-b> <nop>
inoremap <c-b> <nop>
imap <c-b> <esc><c-b>
nnoremap <c-b>d :<c-u>bdelete<cr>
nnoremap <c-b>D :<c-u>bdelete!<cr>

nnoremap <c-l> :<c-u>e #<cr>
inoremap <c-l> <esc>:<c-u>e #<cr>

function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
nnoremap <c-w>z :<c-u>call <sid>ZoomToggle()<CR>

nnoremap s <nop>
nnoremap sw :<c-u>w<cr>
nnoremap sr :<c-u>set relativenumber!<cr>
nnoremap sh :<c-u>noh<cr>
nnoremap ss :<c-u>so $MYVIMRC<cr>

nnoremap <f1> i<enter><esc>k$Jx
inoremap <f1> <enter><esc>k$Jxi
