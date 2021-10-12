" Center the cursor when navigating
nnoremap {     {zz
nnoremap }     }zz
nnoremap n     nzz
nnoremap N     Nzz
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz
nnoremap H     Hzz
nnoremap L     Lzz

" Keymaps and functions for opening/closing/navigating quick/location lists
" Taken from ThePrimeagen's config
nnoremap <C-j> :cnext<CR>zz
nnoremap <C-k> :cprev<CR>zz
nnoremap <leader>j :lnext<CR>zz
nnoremap <leader>k :lprev<CR>zz
nnoremap <C-q> :call ToggleQFList(1)<CR>
nnoremap <leader>q :call ToggleQFList(0)<CR>

let g:qf_l = 0
let g:qf_g = 0

fun! ToggleQFList(global)
    if a:global
        if g:qf_g == 1
            let g:qf_g = 0
            cclose
        else
            let g:qf_g = 1
            copen
        end
    else
        if g:qf_l == 1
            let g:qf_l = 0
            lclose
        else
            let g:qf_l = 1
            lopen
        end
    endif
endfun
