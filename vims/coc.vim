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

nmap <silent> <leader>ldn <Plug>(coc-diagnostic-next)
nmap <silent> <leader>ldp <Plug>(coc-diagnostic-prev)
nnoremap <silent> <leader>lda :<c-u>CocDiagnostics<cr>


augroup coc-diag
  au!
  au FileType qf
    \ nnoremap <buffer> <esc> :<c-u>q<cr>
augroup end

nmap <silent> <leader>lgd <Plug>(coc-definition)
nmap <silent> <leader>lgt <Plug>(coc-type-definition)
nmap <silent> <leader>lgi <Plug>(coc-implementation)
nmap <silent> <leader>lgr <Plug>(coc-references)

nnoremap <silent> <leader>ll :<c-u>call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <leader>lrr <Plug>(coc-refactor)
nmap <leader>lrf <Plug>(coc-fix-current)
nmap <leader>lrn <Plug>(coc-rename)

nmap <leader>lf <Plug>(coc-format)

nmap <leader>la <Plug>(coc-codeaction)
nmap <leader>lc <Plug>(coc-codelens_action)
