local set = vim.opt

-- Use the system clipboard instead of the unnamed register
set.clipboard = "unnamedplus"
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
-- Whitespace characters
set.listchars:append({ tab = "ᐧ ", eol = "◦" })
-- Characters for vertical separators
set.fillchars:append({ diff = "╱" })
-- Only the last window will have a status line
set.laststatus = 3
-- How many spaces for an indentation
set.shiftwidth = 2
-- Enable 24-bit RGB color
set.termguicolors = true
-- Show line number on line with cursor
set.number = true
-- Show line numbers relative to line with cursor
set.relativenumber = true
-- Save and restore undo history to disk
set.undofile = true
-- No need with undotree
set.swapfile = false
-- Side column for code errors/linting/git markers
set.signcolumn = "yes"
-- Show column to help limit rightwards drift
set.colorcolumn = "80"
-- Remove noticeable delays, reduced from 4000 default
set.updatetime = 100
-- Highlight the screen line of the cursor
set.cursorline = true
-- Wrapped lines continue visually indented
set.breakindent = true
-- Wrapped line's beginning will be shifted to emphasize line continuation
set.breakindentopt = "shift:2"
-- String to put at start of wrapped lines
set.showbreak = "↳"
-- Wrap long lines on whole words not the last character that fits on the screen
set.linebreak = true
-- Options for vimdiff/fugitive diff
set.diffopt:append("vertical,algorithm:patience,indent-heuristic")
