local ok, gitsigns = pcall(require, "gitsigns")

if not ok then
	return
end

gitsigns.setup()

vim.keymap.set({ "n", "v" }, "<leader>hs", "<cmd>Gitsigns stage_hunk<CR>", { desc = "Stage hunk" })
vim.keymap.set({ "n", "v" }, "<leader>hr", "<cmd>Gitsigns reset_hunk<CR>", { desc = "Reset hunk" })

vim.keymap.set("n", "<leader>hu", "<cmd>Gitsigns undo_stage_hunk<CR>", { desc = "Undo stage hunk" })
vim.keymap.set("n", "<leader>hp", "<cmd>Gitsigns preview_hunk<CR>", { desc = "Preview hunk" })
vim.keymap.set("n", "<leader>hd", "<cmd>Gitsigns toggle_deleted<CR>", { desc = "Toggle showing deleted lines" })

vim.keymap.set({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", { desc = "Git hunk" })
vim.keymap.set({ "o", "x" }, "ah", ":<C-U>Gitsigns select_hunk<CR>", { desc = "Git hunk" })

vim.keymap.set("n", "<leader>ds", "<cmd>Gitsigns stage_buffer<CR>", { desc = "Stage buffer" })
vim.keymap.set("n", "<leader>dr", "<cmd>Gitsigns reset_buffer<CR>", { desc = "Reset buffer" })
vim.keymap.set("n", "<leader>dl", "<cmd>Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle line blame" })
vim.keymap.set("n", "<leader>db", "<cmd>lua require'gitsigns'.blame_line{full=true}<CR>", { desc = "Blame line popup" })
vim.keymap.set("n", "<leader>dd", "<cmd>Gitsigns diffthis<CR>", { desc = "Diff this file against index" })

vim.keymap.set("n", "[c", function()
	return vim.o.diff == true and "[c" or "<cmd>Gitsigns prev_hunk<CR>"
end, { desc = "Previous git hunk", expr = true })

vim.keymap.set("n", "]c", function()
	return vim.o.diff == true and "]c" or "<cmd>Gitsigns next_hunk<CR>"
end, { desc = "Next git hunk", expr = true })
