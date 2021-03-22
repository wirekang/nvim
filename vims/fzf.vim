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
let $FZF_DEFAULT_COMMAND = "find . ! -path '*node_modules*'"
nmap <leader>f :<c-u>FZF<cr>


