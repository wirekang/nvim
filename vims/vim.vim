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

nnoremap <leader>bda :<c-u>%bdelete<cr>
nnoremap <leader>bdo :<c-u>1,100bd<cr>
nnoremap <leader>bh :<c-u>bprevious<cr>
nnoremap <leader>bH :<c-u>bfirst<cr>
nnoremap <leader>bl :<c-u>bnext<cr>
nnoremap <leader>bL :<c-u>blast<cr>
nnoremap <leader>bd :<c-u>bdelete<cr>
nnoremap <leader>bD :<c-u>bdelete!<cr>
nnoremap <leader>b :<c-u>badd noname<cr>:<c-u>buffer noname<cr>

noremap <leader>wdo <c-w>o
noremap <leader>wh <c-w>h
noremap <leader>wj <c-w>j
noremap <leader>wk <c-w>k
noremap <leader>wl <c-w>l
noremap <leader>ws :<c-u>split<cr><c-w>j
noremap <leader>wv :<c-u>vsplit<cr><c-w>l
noremap <leader>wK :<c-u>exe "resize " . (winheight(0) * 3/2)<cr>
noremap <leader>wJ :<c-u>exe "resize " . (winheight(0) * 2/3)<cr>
noremap <leader>wL :<c-u>exe "vertical resize " . (winwidth(0) * 2/3)<cr>
noremap <leader>wH :<c-u>exe "vertical resize " . (winwidth(0) * 3/2)<cr>
noremap <leader>wd <c-w>c
noremap <leader>w <c-w><c-w>

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

noremap <leader>swq :<c-u>wq<cr>
noremap <leader>sq :<c-u>q<cr>
noremap <leader>sw :<c-u>w<cr>
noremap <leader>sr :<c-u>set relativenumber!<cr>
noremap <leader>sh :<c-u>noh<cr>
noremap <leader>s :<c-u>so $MYVIMRC<cr>
