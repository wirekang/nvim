call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-rooter'
Plug 'TaDaa/vimade'
Plug 'roryokane/detectindent'
Plug 'liuchengxu/vim-which-key'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'puremourning/vimspector'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
call plug#end()
