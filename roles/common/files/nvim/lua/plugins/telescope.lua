return {
	"nvim-telescope/telescope.nvim",
	keys = {
		-- disable the git status keymap, neogit stash uses it
		{ "<leader>gs", false },
		-- disable the search git commits keymap, neogit commit uses it
		{ "<leader>gc", false },
		{ "<leader>dc", "<cmd>Telescope git_commits<CR>", desc = "Search all commits" },
	},
	opts = {
		defaults = {
			layout_config = { height = 400, width = 400, vertical = { preview_height = 0.65 } },
			layout_strategy = "vertical",
			mappings = {
				i = {
					["<a-d>"] = function(...)
						return require("telescope.actions").delete_buffer(...)
					end,
					["<a-n>"] = require("telescope.actions.layout").cycle_layout_next,
					["<a-p>"] = require("telescope.actions.layout").cycle_layout_prev,
				},
				n = {
					["<a-d>"] = function(...)
						return require("telescope.actions").delete_buffer(...)
					end,
				},
			},
			cache_picker = { num_pickers = 10, limit_entries = 10 },
		},
		pickers = {
			lsp_references = { fname_width = 100 },
			lsp_definitions = { fname_width = 100 },
		},
	},
}
