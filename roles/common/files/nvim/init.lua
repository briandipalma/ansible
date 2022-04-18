-- Map the leader key to space, more convenient than default `\`
vim.g.mapleader = " "
-- Buffer local mappings or operations local to your current line?
vim.g.maplocalleader = "\\"
-- Only the last window will have a status line
vim.o.laststatus = 3

require("diagnostic")
require("plugins")
require("keymaps")
require("sets")
require("navigation")
