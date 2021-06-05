" Give the same prefix to all the fzf commands 
let g:fzf_command_prefix = 'Fzf'
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
" Enable per-command history
let g:fzf_history_dir = '~/.local/share/fzf-history'

nnoremap <silent> <leader>o :FzfFiles<CR>
nnoremap <silent> <leader>f :FzfRg<CR>
" Path completion with custom source command
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('fd')

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
