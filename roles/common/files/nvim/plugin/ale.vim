" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

nnoremap <s-A-o> :ALEOrganizeImports<cr>
nnoremap <F12> :ALEGoToDefinition<cr>
" In a terminal Shift-F12 seems to be mapped to F24 tested on Mac/Linux and with
" multiple keyboards
nnoremap <F24> :ALEFindReferences<cr>
nnoremap <F2> :ALERename<cr>
