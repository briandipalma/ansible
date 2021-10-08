""" Vim-Plug

call plug#begin()
  Plug 'folke/which-key.nvim'
  Plug 'unblevable/quick-scope'
  Plug 'machakann/vim-highlightedyank'
  " NERDTree plugins
  Plug 'preservim/nerdtree', { 'on': ['NERDTreeFind', 'NERDTreeFocus'] }
  Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': ['NERDTreeFind', 'NERDTreeFocus'] }
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': ['NERDTreeFind', 'NERDTreeFocus'] }
  Plug 'ryanoasis/vim-devicons', { 'on': ['NERDTreeFind', 'NERDTreeFocus'] }
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
  Plug 'Yggdroot/indentLine'
  Plug 'tpope/vim-commentary'
call plug#end()

" Map the leader key to space, more convenient than default `\`
let mapleader = " "
