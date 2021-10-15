lua require('plugins')
lua require('navigation')

""" Vim-Plug

call plug#begin()
  Plug 'unblevable/quick-scope'
  Plug 'machakann/vim-highlightedyank'
  " Theme
  Plug 'overcache/NeoSolarized'
  Plug 'mbbill/undotree'
  Plug 'dense-analysis/ale'
  Plug 'Yggdroot/indentLine'
call plug#end()

" Map the leader key to space, more convenient than default `\`
let mapleader = " "
