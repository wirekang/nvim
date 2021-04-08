let g:vimspector_install_gadgets = ['debugger-for-chrome','vscode-node-debug2',"vscode-go"]
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
let g:vimspector_sign_priority = {
  \ 'vimspectorBP': 999,
  \ 'vimspectorBPCond': 999,
  \ 'vimspectorBPDisabled': 999,
  \ 'vimspectorPC': 999,
  \ 'vimspectorPCBP': 999
  \}
nnoremap <F12> :<c-u>VimspectorReset<cr>

function s:onCreated() abort
  call nvim_win_set_height(g:vimspector_session_windows.variables,50)
  call nvim_win_set_width(g:vimspector_session_windows.variables,60)
  call nvim_win_close(g:vimspector_session_windows.output, 1)

endfunction
au! User VimspectorUICreated call <sid>onCreated()
