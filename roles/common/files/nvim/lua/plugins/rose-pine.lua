return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			variant = "dawn",
			-- Make telescope.nvim transparent
			highlight_groups = {
				BufferLineTabSelected = { fg = "text" },
				TelescopeBorder = { fg = "highlight_high", bg = "none" },
				TelescopeNormal = { bg = "none" },
				TelescopePromptNormal = { bg = "base" },
				TelescopeResultsNormal = { fg = "subtle", bg = "none" },
				TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
			},
		},
	},
	{ "LazyVim/LazyVim", opts = { colorscheme = "rose-pine" } },
}
