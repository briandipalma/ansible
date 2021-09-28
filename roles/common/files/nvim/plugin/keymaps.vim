" Open lazygit in a tmux popup window
nnoremap <leader>g :!open-lazygit-tmux-popup<CR><CR>

" Paste from clipboard, use C-q instead of C-v to insert literal text
inoremap <C-v> <C-r>+

" Move lines up or down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
