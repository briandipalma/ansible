return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Configurations for Neovim's LSP client
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  -- Tree-sitter
  use { 'nvim-treesitter/nvim-treesitter', branch = '0.5-compat', run = ':TSUpdate' }
  -- Comment toggling
  use 'tpope/vim-commentary'
  -- File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }
  -- Fuzzy finder over lists
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  -- Autocompletion plugin and sources
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source
  use 'hrsh7th/cmp-buffer' -- Buffers source
  -- Snippets and autocompletion sources
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source
  use "rafamadriz/friendly-snippets" -- Collection of snippets
  -- Auto close pairs, brackets/quotes
  use 'windwp/nvim-autopairs'
  -- git plugins, gutter git decorations
  use 'tpope/vim-fugitive'
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end
  }
  -- Show key combinations after pressing a key
  use 'folke/which-key.nvim'
  -- Statusline plugin
  use {
    'hoob3rt/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- Visualize Neovim's undo tree
  use 'mbbill/undotree'
end)
