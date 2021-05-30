let g:fzf_command_prefix = 'fzf'

command! FzfLastCommitFiles call fzf#run(fzf#wrap({'source': 'git diff-tree --no-commit-id --name-only -r HEAD', 'sink': 'e'}))
