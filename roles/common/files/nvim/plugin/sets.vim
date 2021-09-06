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
" Set undodir list or undofile below has no effect
set undodir=~/.config/nvim/undodir
" Save and restore undo history to disk
set undofile
" No need with undotree
set noswapfile
" Number of lines buffer to keep above and below cursor line when scrolling 
set scrolloff=8
" Side column for code errors/linting/git markers
set signcolumn=yes
" Show column to help limit rightwards drift
set colorcolumn=80
" Remove noticeable delays, reduced from 4000 default
set updatetime=100
" Highlight the screen line of the cursor
set cursorline
" Hide, don't unload, buffers when you navigate from them. Prevents requests
" to write buffers on code/file navigation away from edited buffer
set hidden
" Stop auto folding when files are opened
set foldlevelstart=99
" Show invisibles
set list lcs=tab:▹\ ,eol:◦
