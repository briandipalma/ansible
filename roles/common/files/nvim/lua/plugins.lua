return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Auto close quotes, brackets when you press enter
  use 'rstacruz/vim-closer'
  -- Show key combinations after pressing a key
  use 'folke/which-key.nvim'
  -- Configurations for Neovim's LSP client
  use 'neovim/nvim-lspconfig'
end)
