augroup fzf
    au!
    au FileType fzf
    \ tmap <buffer> <esc> <c-c>
augroup END

let g:fzf_action = {
    \ "ctrl-t":"tab split"
    \}

nmap <silent><leader>fp :<c-u>call fzf#run({
    \ "source": "find . ! -path '*/node_modules/*'",
    \ "sink": "e",
    \ "down": "20%"
    \ })<CR>


nmap <silent><leader>ff :<c-u>call fzf#run({
    \ "source": printf("find %s ! -path '*/node_modules/*'", expand("%:p:h")),
    \ "sink": "e",
    \ "down": "20%"
    \ })<CR>




