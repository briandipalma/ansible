-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local set = vim.opt

set.list = false -- Don't display whitespace characters
set.scrolloff = 100 -- Number of lines buffer to keep above and below cursor line when scrolling

set.wrap = true -- Wrap text
set.breakindentopt = "shift:2" -- Wrapped line's beginning will be shifted to emphasize line continuation
set.linebreak = true -- Wrap long lines on whole words not the last character that fits on the screen
set.showbreak = "↳" -- String to put at start of wrapped lines

set.winbar = "%=%m %f"

vim.g.loaded_node_provider = 0 -- Disable Node.js remote plugins support
vim.g.loaded_perl_provider = 0 -- Disable Perl remote plugins support
vim.g.loaded_python3_provider = 0 -- Disable Python remote plugins support
vim.g.loaded_ruby_provider = 0 -- Disable Ruby remote plugins support
