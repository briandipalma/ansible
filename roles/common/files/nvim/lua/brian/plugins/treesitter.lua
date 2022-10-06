require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"comment",
		"css",
		"dockerfile",
		"fish",
		"hcl",
		"html",
		"java",
		"javascript",
		"jsdoc",
		"json",
		"kotlin",
		"lua",
		"markdown",
		"markdown_inline",
		"regex",
		"rust",
		"toml",
		"tsx",
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
				["af"] = { query = "@function.outer", desc = "Select outer part of a function" },
				["if"] = { query = "@function.inner", desc = "Select inner part of a function" },
				["ak"] = { query = "@class.outer", desc = "Select outer part of a class" },
				["ik"] = { query = "@class.inner", desc = "Select inner part of a class" },
			},
		},
		move = {
			enable = true,
			set_jumps = true,
			goto_next_start = {
				["]b"] = { query = "@block.outer", desc = "Next block start" },
				["]k"] = { query = "@class.outer", desc = "Next class start" },
				["]f"] = { query = "@function.outer", desc = "Next function start" },
			},
			goto_next_end = {
				["]B"] = { query = "@block.outer", desc = "Next block end" },
				["]K"] = { query = "@class.outer", desc = "Next class end" },
				["]F"] = { query = "@function.outer", desc = "Next function end" },
			},
			goto_previous_start = {
				["[b"] = { query = "@block.outer", desc = "Previous block start" },
				["[k"] = { query = "@class.outer", desc = "Previous class start" },
				["[f"] = { query = "@function.outer", desc = "Previous function start" },
			},
			goto_previous_end = {
				["[B"] = { query = "@block.outer", desc = "Previous block end" },
				["[K"] = { query = "@class.outer", desc = "Previous class end" },
				["[F"] = { query = "@function.outer", desc = "Previous function end" },
			},
		},
		lsp_interop = {
			enable = true,
			peek_definition_code = {
				["<leader>if"] = { query = "@function.outer", desc = "Peek function definition" },
				["<leader>iF"] = { query = "@class.outer", desc = "Peek class definition" },
			},
		},
	},
})
