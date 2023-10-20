-- Normal mode mappings --

vim.keymap.set("n", "<leader>fp", function()
	vim.cmd.e(vim.fn.getreg("+"))
end, { desc = "Open pasted file path" })

-- Go to the first non-blank character of a line
vim.keymap.set("n", "0", "^")
-- Just in case you need to go to the very beginning of a line
vim.keymap.set("n", "^", "0")

-- Visual mode mappings --

-- Don't replace register value when pasting over text
vim.keymap.set("v", "p", '"_dP')
