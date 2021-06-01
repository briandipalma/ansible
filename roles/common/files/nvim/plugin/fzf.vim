let g:fzf_command_prefix = 'Fzf'

nnoremap <silent> <leader>o :FzfFiles<CR>
nnoremap <silent> <leader>f :FzfRg<CR>

command! FzfLastCommitFiles call fzf#run(
  \ fzf#wrap({
    \ 'source': 'git diff-tree --no-commit-id --name-only -r HEAD',
    \ 'sink': 'vsplit',
    \ 'options': [
      \ '--multi',
      \ '--preview',
      \ 'bat --style=numbers --color=always --line-range :500 {}'
      \]
  \ }))
