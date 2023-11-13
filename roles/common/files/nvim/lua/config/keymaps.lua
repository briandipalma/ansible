-- Normal mode mappings --

vim.keymap.set("n", "<leader>fp", function()
	vim.cmd.e(vim.fn.getreg("+"))
end, { desc = "Open pasted file path" })

-- Insert mode mappings --

-- Escape without taking fingers from home row
vim.keymap.set("i", "jk", "<Esc>")

-- Visual mode mappings --

-- Don't replace register value when pasting over text
vim.keymap.set("v", "p", '"_dP')
