-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local set = vim.opt

set.colorcolumn = "80" -- Show column to help limit rightwards drift
set.fillchars = {
	foldopen = "",
	foldclose = "",
	fold = " ",
	foldsep = " ",
	diff = "╱",
	eob = " ",
}
set.list = false -- Don't display whitespace characters
set.scrolloff = 100 -- Number of lines buffer to keep above and below cursor line when scrolling
set.winbar = "%=%m %f" -- Content of window bar, shown at the top of every window

vim.o.foldcolumn = "0" -- Hide the fold level numbers and fold markers...
vim.o.foldlevel = 99 -- Only close ludicrously nested code automatically
vim.o.foldlevelstart = 99
