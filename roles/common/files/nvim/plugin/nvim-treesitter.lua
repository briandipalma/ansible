require("nvim-treesitter.configs").setup({
	ensure_installed = "maintained",
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<leader>ii",
			node_incremental = "<leader>ik",
			scope_incremental = "<leader>il",
			node_decremental = "<leader>ij",
		},
	},
	indent = {
		enable = true,
	},
	refactor = {
		highlight_definitions = { enable = true },
	},
})
