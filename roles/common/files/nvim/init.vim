""" Vim-Plug

call plug#begin()
  " NERDTree plugins
  Plug 'preservim/nerdtree', { 'on':  'NERDTreeFocus' }
  Plug 'Xuyuanp/nerdtree-git-plugin', { 'on':  'NERDTreeFocus' }
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on':  'NERDTreeFocus' }
  Plug 'ryanoasis/vim-devicons', { 'on':  'NERDTreeFocus' }
  " Theme
  Plug 'overcache/NeoSolarized'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'mbbill/undotree'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'airblade/vim-gitgutter'
  Plug 'dense-analysis/ale'
  Plug 'sheerun/vim-polyglot'
  Plug 'LunarWatcher/auto-pairs', { 'tag': '*' }
call plug#end()

" Map the leader key to space, more convenient than default `\`
let mapleader = " "

