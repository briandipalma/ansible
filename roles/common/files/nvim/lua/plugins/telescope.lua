return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
		config = function()
			-- Add smart case and FZF syntax support to pickers
			require("telescope").load_extension("fzf")
		end,
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
		},
		pickers = {
			lsp_references = { fname_width = 100 },
			lsp_definitions = { fname_width = 100 },
		},
	},
}
