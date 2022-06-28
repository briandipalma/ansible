local keymap = vim.keymap.set

-- Map the leader key to space, more convenient than default `\`
vim.g.mapleader = " "
-- Buffer local mappings or operations local to your current line?
vim.g.maplocalleader = "\\"

-- Terminal mode mappings --

-- Quicker exit from terminal insert mode
keymap("t", "<C-\\>", "<C-\\><C-n>")
keymap("t", "<A-k>", "<C-\\><C-n><C-w>k")

-- Insert mode mappings --

-- Paste from clipboard, use C-q instead of C-v to insert literal text
keymap("i", "<C-v>", "<C-r>+")
keymap("i", "jk", "<ESC>")

-- Visual mode mappings --

-- Stay in indent mode
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Normal mode mappings --

-- Go to the first non-blank character of a line
keymap("n", "0", "^")
-- Just in case you need to go to the very beginning of a line
keymap("n", "^", "0")
-- Move focused window
keymap("n", "<A-h>", "<C-w>h")
keymap("n", "<A-j>", "<C-w>j")
keymap("n", "<A-k>", "<C-w>k")
keymap("n", "<A-l>", "<C-w>l")
-- https://github.com/neovim/neovim/issues/16416 workaround
keymap("n", "<C-c>", "<Esc>")
-- Center the cursor when navigating
keymap("n", "{", "{zz")
keymap("n", "}", "}zz")
keymap("n", "n", "nzz")
keymap("n", "N", "Nzz")
keymap("n", "<C-o>", "<C-o>zz")
keymap("n", "<C-i>", "<C-i>zz")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
