augroup fzf
    au!
    au FileType fzf
    \ pwd
    \ | tnoremap <buffer> <m-j> <down>
    \| tnoremap <buffer> <m-k> <up>
    \| tnoremap <buffer> <m-o> <cr>
    \| tnoremap <buffer> <esc> <esc>
augroup END

let g:fzf_action = {
    \ "alt-s":"split",
    \ "alt-v":"vsplit"
    \}

nmap <leader>f :<c-u>execute 'FZF' getcwd()<cr>
nmap <leader>ff :<c-u>execute 'FZF' expand('%:p:h')<cr>


