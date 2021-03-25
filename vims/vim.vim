set nocompatible
set nowrap
set shortmess+=c
set noswapfile
set nowrapscan
set shiftwidth=2
set expandtab
set tabstop=2
syntax enable
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
set cmdheight=3
set laststatus=2
set cursorline
set updatetime=100
set colorcolumn=90
set timeoutlen=500
set lazyredraw
set encoding=utf-8 nobomb
set scrolloff=5
set noerrorbells
set backupdir=~/.cache/nvim
set nostartofline
set sidescroll=1
set visualbell

set autoread
au CursorHold * checktime

tnoremap <esc> <c-\><c-n>

" unmap builtin keys
inoremap <c-space> <Nop>
noremap <c-space> <Nop>
noremap <space> <nop>

let mapleader=" "
imap <m-space> <esc><space>
nmap <m-space> <space>
xmap <m-space> <space>

nnoremap <c-b> <nop>
inoremap <c-b> <nop>
imap <c-b> <esc><c-b>
nnoremap <c-b>d :<c-u>bdelete<cr>
nnoremap <c-b>D :<c-u>bdelete!<cr>

nnoremap <c-o> :<c-u>bnext<cr>
inoremap <c-o> <esc>:<c-u>bnext<cr>
nnoremap <c-i> :<c-u>bprevious<cr>
inoremap <c-i> <esc>:<c-u>bprevious<cr>

nnoremap <c-m-o> :<c-u>tabnext<cr>
inoremap <c-m-o> <esc>:<c-u>tabnext<cr>
nnoremap <c-m-i> :<c-u>tabprevious<cr>
inoremap <c-m-i> <esc>:<c-u>tabprevious<cr>

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
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <leader>wz :<c-u>ZoomToggle<CR>

nnoremap s <nop>
nnoremap sw :<c-u>w<cr>
nnoremap sr :<c-u>set relativenumber!<cr>
nnoremap sh :<c-u>noh<cr>
nnoremap ss :<c-u>so $MYVIMRC<cr>
