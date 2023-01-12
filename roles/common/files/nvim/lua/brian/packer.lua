local packer = require("packer")
local util = require("packer.util")

packer.init({ display = { compact = true } })

packer.startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	-- LSP
	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },
			{ "hrsh7th/cmp-cmdline" },
			{ "hrsh7th/cmp-cmdline" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			-- Snippet Collection (Optional)
			{ "rafamadriz/friendly-snippets" },
		},
	})
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	})
	-- Tree-sitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use({
		"nvim-treesitter/nvim-treesitter-refactor",
		requires = "nvim-treesitter/nvim-treesitter",
	})
	use({
		"nvim-treesitter/nvim-treesitter-textobjects",
		requires = "nvim-treesitter/nvim-treesitter",
	})
	-- Comment toggling
	use({ "numToStr/Comment.nvim" })
	-- File explorer
	use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
	-- Fuzzy finder over lists
	use({ "nvim-telescope/telescope.nvim", requires = "nvim-lua/plenary.nvim" })
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({
		"princejoogie/dir-telescope.nvim",
		requires = { "nvim-telescope/telescope.nvim" },
	})
	-- Auto close pairs, brackets/quotes
	use({ "windwp/nvim-autopairs" })
	-- Modify surrounding delimiters
	use({ "kylechui/nvim-surround" })
	-- git plugins, gutter git decorations
	use({ "lewis6991/gitsigns.nvim", requires = "nvim-lua/plenary.nvim" })
	use({ "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" })
	-- Show key combinations after pressing a key
	use({ "folke/which-key.nvim" })
	-- Statusline plugin
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	-- Visualize Neovim's undo tree
	use({ "mbbill/undotree" })
	-- Faster searching/movement
	use({ "ggandor/leap.nvim" })
	-- Theme
	use({ "rose-pine/neovim", as = "rose-pine" })
	-- Terminal
	use({ "akinsho/toggleterm.nvim" })
	-- Nicer messages
	use({
		"folke/noice.nvim",
		requires = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
	})
end)

local fn = vim.fn
local compile_path = util.join_paths(fn.stdpath("config"), "plugin", "packer_compiled.lua")

if fn.empty(fn.glob(compile_path)) > 0 then
	packer.sync()
end
