let g:indent_guides_enable_on_vim_startup = 1
map <leader>ig <Nop>
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  guibg=#262626 ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=#202020 ctermbg=234
