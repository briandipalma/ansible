-- Map the leader key to space, more convenient than default `\`
vim.g.mapleader = " "
-- Buffer local mappings or operations local to your current line?
vim.g.maplocalleader = "\\"

require("diagnostic")
require("plugins")
require("keymaps")
require("sets")
require("navigation")
