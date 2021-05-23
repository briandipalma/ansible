""" Vim-Plug

call plug#begin()
  " NERDTree plugins
  Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'Xuyuanp/nerdtree-git-plugin', { 'on':  'NERDTreeToggle' }
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on':  'NERDTreeToggle' }
  Plug 'ryanoasis/vim-devicons', { 'on':  'NERDTreeToggle' }
  " Theme
  Plug 'overcache/NeoSolarized'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'mbbill/undotree'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'airblade/vim-gitgutter'
call plug#end()

" Map the leader key to space, more convenient than default `\`
let mapleader = " "

