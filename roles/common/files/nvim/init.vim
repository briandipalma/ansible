lua require('plugins')

""" Vim-Plug

call plug#begin()
  Plug 'unblevable/quick-scope'
  Plug 'machakann/vim-highlightedyank'
  " Theme
  Plug 'overcache/NeoSolarized'
  Plug 'mbbill/undotree'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'airblade/vim-gitgutter'
  Plug 'dense-analysis/ale'
  Plug 'sheerun/vim-polyglot'
  Plug 'Yggdroot/indentLine'
  Plug 'tpope/vim-commentary'
call plug#end()

" Map the leader key to space, more convenient than default `\`
let mapleader = " "
