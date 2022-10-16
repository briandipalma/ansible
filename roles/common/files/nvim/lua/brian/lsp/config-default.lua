local cmpLSP = require("cmp_nvim_lsp")

local capabilities = cmpLSP.default_capabilities()
local opts = { noremap = true, silent = true }

local function on_attach(_, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end

	buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>zz", opts)
	buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>zz", opts)
	buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	buf_set_keymap("n", "<leader>lp", "<cmd>lua vim.diagnostic.goto_prev()<CR>zz", opts)
	buf_set_keymap("n", "<leader>ln", "<cmd>lua vim.diagnostic.goto_next()<CR>zz", opts)
	buf_set_keymap("n", "<leader>li", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	buf_set_keymap("n", "<leader>lk", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
	buf_set_keymap("n", "<leader>ld", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
	buf_set_keymap("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
	buf_set_keymap("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
	buf_set_keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
	buf_set_keymap("n", "<leader>le", "<cmd>lua require('brian.diagnostic').show_line_diagnostics()<CR>", opts)
	buf_set_keymap("n", "<leader>ll", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
end

return { on_attach = on_attach, capabilities = capabilities }
