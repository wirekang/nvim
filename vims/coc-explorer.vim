nnoremap <leader>ft :<c-u>execute 'CocCommand explorer --preset pre' getcwd()<CR>
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

