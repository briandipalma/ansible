local set = vim.opt

-- Number of lines buffer to keep above and below cursor line when scrolling
set.scrolloff = 100
-- Kind of folding to use for the current window
set.foldmethod = "expr"
-- Use treesitter to obtain a line's fold level
set.foldexpr = "nvim_treesitter#foldexpr()"
-- Folding disabled on open, `zi` to enable
set.foldenable = false
-- Number of spaces that a <Tab> counts for
set.tabstop = 2
-- Show invisibles
set.list = true
set.listchars:append({ tab = "ᐧ ", eol = "◦" })
