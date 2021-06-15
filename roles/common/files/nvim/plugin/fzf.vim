" Create a quickfix list with the fzf results 
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

" Add a create quickfix list action to the default fzf actions
let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
" Give the same prefix to all the fzf commands 
let g:fzf_command_prefix = 'Fzf'
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
" Enable per-command history
let g:fzf_history_dir = '~/.local/share/fzf-history'

nnoremap <C-p> :FzfFiles<CR>
nnoremap <leader>f :FzfRg<CR>
" Path completion with custom source command
inoremap <expr> <C-x><C-f> fzf#vim#complete#path('fd')

command! FzfLastCommitFiles call fzf#run(
  \ fzf#wrap('last-commit-files', {
    \ 'source': 'git diff-tree --no-commit-id --name-only -r HEAD',
    \ 'sink': 'vsplit',
    \ 'options': [
      \ '--multi',
      \ '--preview',
      \ 'bat --style=numbers --color=always --line-range :500 {}'
      \]
  \ }))
