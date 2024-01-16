return {
	"nvim-lualine/lualine.nvim",
	opts = function(_, opts)
		local winbar_conf = {
			lualine_y = {
				{
					"filetype",
					icon_only = true,
					separator = { left = "" },
				},
				{ "filename", path = 1, color = { fg = "Statement", gui = "bold" } },
			},
		}

		opts.theme = "rose-pine"
		opts.options.disabled_filetypes.winbar =
			{ "dashboard", "NeogitStatus", "DiffviewFiles", "Trouble", "NeogitCommitMessage" }
		opts.winbar = winbar_conf
		opts.inactive_winbar = winbar_conf
	end,
}
