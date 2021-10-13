return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Show key combinations after pressing a key
  use 'folke/which-key.nvim'
  -- Configurations for Neovim's LSP client
  use 'neovim/nvim-lspconfig'
  -- Autocompletion plugin and sources
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source
  use 'hrsh7th/cmp-buffer' -- Buffers source
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use "rafamadriz/friendly-snippets" -- Collection of snippets
  -- File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }
  -- Fuzzy finder over lists
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  -- Auto close pairs, brackets/quotes
  use 'windwp/nvim-autopairs'
  -- Tree-sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    branch = '0.5-compat',
    run = ':TSUpdate'
  }
end)
