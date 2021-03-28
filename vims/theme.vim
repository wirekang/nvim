set termguicolors
set t_Co=256
set background=dark
let g:gruvbox_background = 'hard'
let g:airline_theme = 'dracula'
colorscheme dracula 

augroup MyColors
  au!
  au ColorScheme * highlight DraculaComment ctermfg=142 guifg=#afaf00
        \ | highlight DraculaCommentBold ctermfg=142 guifg=#afaf00 cterm=bold gui=bold
augroup END
