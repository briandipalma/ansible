local keymap = vim.keymap.set

-- Map the leader key to space, more convenient than default `\`
vim.g.mapleader = " "
-- Buffer local mappings or operations local to your current line?
vim.g.maplocalleader = "\\"

-- Terminal mode mappings --

-- Quicker exit from terminal insert mode
keymap("t", "<C-\\>", "<C-\\><C-n>")

-- Insert mode mappings --

-- Paste from clipboard, use C-q instead of C-v to insert literal text
keymap("i", "<C-v>", "<C-r>+")
keymap("i", "jk", "<ESC>")

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
keymap("n", "<leader>s", ":up<CR>", { desc = "Write updated buffer" })
keymap("n", "<leader>tc", vim.cmd.tabclose, { desc = "Close tab" })
keymap("n", "<leader>wq", "<cmd>copen<CR><C-w>J", { desc = "Open the quickfix window" })
keymap("n", "<leader>wh", vim.cmd.chistory, { desc = "Open the quickfix history" })
keymap("n", "<leader>wj", ":resize -4<CR>", { desc = "Resize down" })
keymap("n", "<leader>wk", ":resize +4<CR>", { desc = "Resize up" })
keymap("n", "<leader>wl", "<cmd>set list!<CR>", { desc = "Toggle whitespace characters" })
keymap("n", "[q", vim.cmd.cprev, { desc = "Previous quickfix entry" })
keymap("n", "]q", vim.cmd.cnext, { desc = "Next quickfix entry" })
keymap("n", "[l", vim.cmd.lprev, { desc = "Previous location list entry" })
keymap("n", "]l", vim.cmd.lnext, { desc = "Next location list entry" })

-- Visual mode mappings --

-- Don't replace register value when pasting over text
keymap("v", "p", '"_dP')
