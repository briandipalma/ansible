let g:fzf_command_prefix = 'Fzf'

command! FzfLastCommitFiles call fzf#run(fzf#wrap({'source': 'git diff-tree --no-commit-id --name-only -r HEAD', 'sink': 'e'}))
nnoremap <silent> <leader>o :FzfFiles<CR>
nnoremap <silent> <leader>f :FzfRg<CR>

