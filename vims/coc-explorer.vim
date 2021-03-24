function! s:open() abort
   execute 'CocCommand explorer --preset pre' getcwd()
endfunction

nnoremap <expr> <c-t> <sid>open()
inoremap <c-t> <esc>:<c-u>call <sid>open()<cr>
"function! HandleCursorLine()
   "let a = trim(execute('set ft?'))
   "if a=='filetype=coc-explorer'
     "set nocursorline
   "endif
    "set cursorline
"endfunction

"augroup cocCursorBug
  "au!
  "au CursorHold * call HandleCursorLine()
"augroup END

