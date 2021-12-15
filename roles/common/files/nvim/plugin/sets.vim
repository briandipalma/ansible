" How many spaces for an indentation
set shiftwidth=2
" Enable mouse in all modes
set mouse=a
" Enable 24-bit RGB color
set termguicolors
" Show line number on line with cursor
set number
" Show line numbers relative to line with cursor
set relativenumber
" Save and restore undo history to disk
set undofile
" No need with undotree
set noswapfile
" Side column for code errors/linting/git markers
set signcolumn=yes
" Show column to help limit rightwards drift
set colorcolumn=80
" Remove noticeable delays, reduced from 4000 default
set updatetime=100
" Highlight the screen line of the cursor
set cursorline
" Wrapped lines continue visually indented
set breakindent
" Wrapped line's beginning will be shifted to emphasize line continuation
set breakindentopt=shift:2
" String to put at start of wrapped lines
set showbreak=↳
" Wrap long lines on whole words not the last character that fits on the screen
set linebreak
" Options for vimdiff/fugitive diff
set diffopt+=vertical,algorithm:patience,indent-heuristic
