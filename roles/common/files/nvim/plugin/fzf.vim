" Create a quickfix list with the fzf results 
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

" Call rg on every query change instead of just once at startup
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

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

nnoremap <leader>o :FzfFiles<CR>
nnoremap <leader>f :RG<CR>
" Path completion with custom source command
inoremap <expr> <C-x><C-f> fzf#vim#complete#path('fd')
