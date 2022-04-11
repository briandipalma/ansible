require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"comment",
		"css",
		"dockerfile",
		"fish",
		"html",
		"java",
		"javascript",
		"jsdoc",
		"json",
		"kotlin",
		"lua",
		"regex",
		"typescript",
		"yaml",
	},
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
	textobjects = {
		select = {
			enable = true,
			lookahead = true,
			keymaps = {
				["ak"] = "@class.outer",
				["ik"] = "@class.inner",
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ab"] = "@block.outer",
				["ib"] = "@block.inner",
			},
		},
		move = {
			enable = true,
			set_jumps = true,
			goto_next_start = {
				["]k"] = "@class.outer",
				["]f"] = "@function.outer",
				["]b"] = "@block.outer",
			},
			goto_next_end = {
				["]K"] = "@class.outer",
				["]F"] = "@function.outer",
				["]B"] = "@block.outer",
			},
			goto_previous_start = {
				["[k"] = "@class.outer",
				["[f"] = "@function.outer",
				["[b"] = "@block.outer",
			},
			goto_previous_end = {
				["[K"] = "@class.outer",
				["[F"] = "@function.outer",
				["[B"] = "@block.outer",
			},
		},
		lsp_interop = {
			enable = true,
			border = "rounded",
			peek_definition_code = {
				["<leader>df"] = "@function.outer",
				["<leader>dF"] = "@class.outer",
			},
		},
	},
})
