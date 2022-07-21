local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup({
	defaults = {
		layout_config = { height = 200, width = 500 },
		mappings = {
			i = {
				["<C-s>"] = actions.cycle_previewers_next,
				["<C-a>"] = actions.cycle_previewers_prev,
			},
		},
	},
	pickers = {
		find_files = {
			mappings = {
				n = {
					["cd"] = function(prompt_bufnr)
						local selection = require("telescope.actions.state").get_selected_entry()
						local dir = vim.fn.fnamemodify(selection.path, ":p:h")
						require("telescope.actions").close(prompt_bufnr)
						vim.cmd(string.format("silent cd %s", dir))
					end,
				},
			},
		},
	},
})

telescope.load_extension("fzf")
