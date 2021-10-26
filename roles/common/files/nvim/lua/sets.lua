local set = vim.opt

-- Number of lines buffer to keep above and below cursor line when scrolling
set.scrolloff = 8
-- Kind of folding to use for the current window
set.foldmethod = "expr"
-- Use treesitter to obtain a line's fold level
set.foldexpr = "nvim_treesitter#foldexpr()"
-- Don't highlight all search pattern matches
set.hlsearch = false
-- Expand tab characters into spaces
set.expandtab = true
