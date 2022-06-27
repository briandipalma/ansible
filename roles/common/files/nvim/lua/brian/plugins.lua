return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	-- Configurations for Neovim's LSP client
	use("neovim/nvim-lspconfig")
	use("williamboman/nvim-lsp-installer")
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	})
	use({
		"jose-elias-alvarez/nvim-lsp-ts-utils",
		requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	})
	use("ray-x/lsp_signature.nvim")
	use("onsails/lspkind-nvim")
	-- Tree-sitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use({ "nvim-treesitter/nvim-treesitter-refactor", requires = "nvim-treesitter/nvim-treesitter" })
	use({ "nvim-treesitter/nvim-treesitter-textobjects", requires = "nvim-treesitter/nvim-treesitter" })
	-- Comment toggling
	use("tpope/vim-commentary")
	-- File explorer
	use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
	-- Fuzzy finder over lists
	use({ "nvim-telescope/telescope.nvim", requires = "nvim-lua/plenary.nvim" })
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	-- Autocompletion plugin and sources
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp") -- LSP source
	use("hrsh7th/cmp-buffer") -- Buffers source
	use("hrsh7th/cmp-path") -- File system paths source
	use("hrsh7th/cmp-cmdline") -- Neovim commands source
	use("hrsh7th/cmp-nvim-lua") -- Neovim Lua API source
	-- Snippets and autocompletion sources
	use("L3MON4D3/LuaSnip") -- Snippets plugin
	use("saadparwaiz1/cmp_luasnip") -- Snippets source
	use("rafamadriz/friendly-snippets") -- Collection of snippets
	-- Auto close pairs, brackets/quotes
	use("windwp/nvim-autopairs")
	-- git plugins, gutter git decorations
	use({ "lewis6991/gitsigns.nvim", requires = "nvim-lua/plenary.nvim" })
	-- Show key combinations after pressing a key
	use("folke/which-key.nvim")
	-- Statusline plugin
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	-- Visualize Neovim's undo tree
	use("mbbill/undotree")
	-- Faster left-right movement, highlight unique characters in line
	use("unblevable/quick-scope")
	-- Display indention levels for space indented code
	use("Yggdroot/indentLine")
	-- Theme
	use({
		"rose-pine/neovim",
		as = "rose-pine",
		tag = "v1.*",
	})
	-- Terminal
	use("akinsho/toggleterm.nvim")
end)
