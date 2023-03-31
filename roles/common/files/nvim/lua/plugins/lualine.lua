return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	opts = function(_, opts)
		local diagnostics = table.remove(opts.sections.lualine_c, 1)
		table.remove(opts.sections.lualine_c, 1) -- Remove filetype
		local filename = table.remove(opts.sections.lualine_c, 1)

		opts.options.disabled_filetypes.winbar =
			{ "neo-tree", "dashboard", "alpha", "DiffviewFiles", "noice", "Trouble", "DiffviewFileHistory" }
		opts.winbar = { lualine_a = { "mode" }, lualine_b = { diagnostics }, lualine_z = { filename } }

		opts.sections.lualine_a = {} -- Disable mode
		opts.sections.lualine_b = {} -- Disable git branch
		opts.sections.lualine_z = {} -- Disable time
	end,
}
