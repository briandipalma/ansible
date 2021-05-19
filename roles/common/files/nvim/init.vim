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
call plug#end()

""" Neovim configuration
colorscheme NeoSolarized

