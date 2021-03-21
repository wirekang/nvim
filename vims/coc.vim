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

nmap <silent> <leader>dj <Plug>(coc-diagnostic-next)
nmap <silent> <leader>dk <Plug>(coc-diagnostic-prev)
nnoremap <silent> <leader>d :<c-u>CocDiagnostics<cr>


augroup coc-diag
  au!
  au FileType qf
    \ nnoremap <buffer> <esc> :<c-u>q<cr>
augroup end

nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gt <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

nnoremap <silent> <leader>h :<c-u>call CocActionAsync('doHover')<cr>

nmap <leader>rn <Plug>(coc-rename)
nmap <leader>rf <Plug>(coc-format)
nmap <leader>r <Plug>(coc-refactor)

nmap <leader>ca <Plug>(coc-codeaction)
nmap <leader>c <Plug>(coc-fix-current)

nmap <leader>cl <Plug>(coc-codelens-action)
