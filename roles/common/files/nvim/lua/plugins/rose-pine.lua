return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			variant = "dawn",
			dim_inactive_windows = true,
			styles = {
				transparency = true,
			},
			-- Make telescope.nvim transparent
			highlight_groups = {
				TelescopeBorder = { fg = "highlight_high", bg = "none" },
				TelescopeNormal = { bg = "none" },
				TelescopePromptNormal = { bg = "base" },
				TelescopeResultsNormal = { fg = "subtle", bg = "none" },
				TelescopeSelection = { fg = "text", bg = "base" },
				TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
			},
		},
	},
	{ "LazyVim/LazyVim", opts = { colorscheme = "rose-pine" } },
}
