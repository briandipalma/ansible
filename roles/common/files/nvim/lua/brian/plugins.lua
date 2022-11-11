local packer = require("packer")
local util = require("packer.util")

packer.init({ display = { compact = true } })

packer.startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	-- Configurations for Neovim's LSP client
	use({
		"neovim/nvim-lspconfig",
		requires = {
			"hrsh7th/cmp-nvim-lsp",
			"jose-elias-alvarez/typescript.nvim",
			"simrat39/rust-tools.nvim",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("brian.plugins.lspconfig")
		end,
	})
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
		config = function()
			require("brian.plugins.null-ls")
		end,
	})
	use({
		"jose-elias-alvarez/nvim-lsp-ts-utils",
		requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	})
	use("onsails/lspkind-nvim")
	-- Tree-sitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function()
			require("brian.plugins.treesitter")
		end,
	})
	use({ "nvim-treesitter/nvim-treesitter-refactor", requires = "nvim-treesitter/nvim-treesitter" })
	use({ "nvim-treesitter/nvim-treesitter-textobjects", requires = "nvim-treesitter/nvim-treesitter" })
	-- Comment toggling
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("brian.plugins.comment")
		end,
	})
	-- File explorer
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("brian.plugins.tree")
		end,
	})
	-- Fuzzy finder over lists
	use({
		"nvim-telescope/telescope.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("brian.plugins.telescope")
		end,
	})
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({
		"princejoogie/dir-telescope.nvim",
		requires = { "nvim-telescope/telescope.nvim" },
		config = function()
			require("dir-telescope").setup()
		end,
	})
	-- Autocompletion plugin and sources
	use({
		"hrsh7th/nvim-cmp",
		config = function()
			require("brian.plugins.cmp")
		end,
	})
	use("hrsh7th/cmp-buffer") -- Buffers source
	use("hrsh7th/cmp-path") -- File system paths source
	use("hrsh7th/cmp-cmdline") -- Neovim commands source
	use("hrsh7th/cmp-nvim-lua") -- Neovim Lua API source
	-- Snippets and autocompletion sources
	use({
		"L3MON4D3/LuaSnip",
		config = function()
			require("brian.plugins.luasnip")
		end,
	}) -- Snippets plugin
	use("saadparwaiz1/cmp_luasnip") -- Snippets source
	use("rafamadriz/friendly-snippets") -- Collection of snippets
	-- Auto close pairs, brackets/quotes
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("brian.plugins.autopairs")
		end,
	})
	-- Modify surrounding delimiters
	use({
		"kylechui/nvim-surround",
		config = function()
			require("brian.plugins.surround")
		end,
	})
	-- git plugins, gutter git decorations
	use({
		"lewis6991/gitsigns.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("brian.plugins.gitsigns")
		end,
	})
	use({
		"sindrets/diffview.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("brian.plugins.diffview")
		end,
	})
	-- Show key combinations after pressing a key
	use({
		"folke/which-key.nvim",
		config = function()
			require("brian.plugins.which-key")
		end,
	})
	-- Statusline plugin
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = function()
			require("brian.plugins.lualine")
		end,
	})
	-- Visualize Neovim's undo tree
	use({
		"mbbill/undotree",
		config = function()
			require("brian.plugins.undotree")
		end,
	})
	-- Faster searching/movement
	use({
		"ggandor/leap.nvim",
		config = function()
			require("brian.plugins.leap")
		end,
	})
	-- Faster left-right movement, highlight unique characters in line
	use({
		"unblevable/quick-scope",
		config = function()
			require("brian.plugins.quick-scope")
		end,
	})
	-- Display indention levels for space indented code
	use({
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("brian.plugins.indent-blankline")
		end,
	})
	-- Theme
	use({
		"rose-pine/neovim",
		as = "rose-pine",
		config = function()
			require("brian.plugins.rose-pine")
		end,
	})
	-- Terminal
	use({
		"akinsho/toggleterm.nvim",
		config = function()
			require("brian.plugins.toggleterm")
		end,
	})
	-- Nicer messages
	use({
		"folke/noice.nvim",
		event = "VimEnter",
		config = function()
			require("noice").setup()
		end,
		requires = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
	})
end)

local fn = vim.fn
local compile_path = util.join_paths(fn.stdpath("config"), "plugin", "packer_compiled.lua")

if fn.empty(fn.glob(compile_path)) > 0 then
	packer.sync()
end
