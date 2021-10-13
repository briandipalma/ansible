lua require('plugins')

""" Vim-Plug

call plug#begin()
  Plug 'unblevable/quick-scope'
  Plug 'machakann/vim-highlightedyank'
  " Theme
  Plug 'overcache/NeoSolarized'
  Plug 'mbbill/undotree'
  Plug 'tpope/vim-fugitive'
  Plug 'dense-analysis/ale'
  Plug 'Yggdroot/indentLine'
  Plug 'tpope/vim-commentary'
call plug#end()

" Map the leader key to space, more convenient than default `\`
let mapleader = " "
