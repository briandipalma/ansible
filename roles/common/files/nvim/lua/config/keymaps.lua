local set = vim.keymap.set

-- Normal mode mappings --

set("n", "<leader>fp", function()
	vim.cmd.e(vim.fn.getreg("+"))
end, { desc = "Open pasted file path" })

-- Select all
set("n", "<C-a>", "gg<S-v>G")

-- Insert mode mappings --

-- Escape without taking fingers from home row
set("i", "jk", "<Esc>")

-- Visual mode mappings --

-- Don't replace register value when pasting over text
set("v", "p", '"_dP')

-- Normal and Visual mappings --

-- Increment/Decrement
set({ "n", "v" }, "+", "<C-a>")
set({ "n", "v" }, "-", "<C-x>")
