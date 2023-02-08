-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local set = vim.opt

set.colorcolumn = "80" -- Show column to help limit rightwards drift
set.list = false -- Don't display whitespace characters
set.scrolloff = 100 -- Number of lines buffer to keep above and below cursor line when scrolling
set.winbar = "%=%m %f" -- Content of window bar, shown at the top of every window
