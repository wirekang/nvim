let g:coc_data_home = '~/.config/nvim/coc/'
autocmd CursorHold * silent call CocActionAsync('highlight')

command! -nargs=0 Prettier :CocCommand prettier.formatFile

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

let g:coc_snippet_next = '<tab>'

inoremap <silent><expr> <c-space> coc#refresh()

nnoremap D <Nop>
nmap <silent> Dj <Plug>(coc-diagnostic-next)
nmap <silent> Dk <Plug>(coc-diagnostic-prev)
nnoremap <silent> Da :<c-u>CocList diagnostics<cr>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent><c-space> :<c-u>call CocActionAsync('doHover')<cr>

nnoremap R <nop>
nmap Rn <Plug>(coc-rename)
nmap Rf <Plug>(coc-format)
nnoremap Ri :<c-u>call CocAction('runCommand', 'editor.action.organizeImport')<cr>
nmap Rr <Plug>(coc-refactor)

nmap ca <Plug>(coc-codeaction)
nmap cf <Plug>(coc-fix-current)
nmap cl <Plug>(coc-codelens-action)

nnoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1) : ""
nnoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0) : ""
inoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : ""
inoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : ""
vnoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1) : ""
vnoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0) : ""

inoremap <silent><c-h> <c-\><c-o>:call CocActionAsync('showSignatureHelp')<cr>

autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
