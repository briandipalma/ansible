-- Use an on_attach function to map the following keys after the language server
-- attaches to the current buffer
local function on_attach(client, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end
	local function buf_set_option(...)
		vim.api.nvim_buf_set_option(bufnr, ...)
	end

	-- Enable completion triggered by <c-x><c-o>
	buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

	-- Mappings.
	local opts = { noremap = true, silent = true }

	-- See `:help vim.lsp.*` for documentation on any of the below functions
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
	buf_set_keymap("n", "<leader>lm", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

	if
		client.name == "jsonls"
		or client.name == "stylelint_lsp"
		or client.name == "html"
		or client.name == "sumneko_lua"
	then
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false
	end

	if client.name == "tsserver" then
		local ts_utils = require("nvim-lsp-ts-utils")

		ts_utils.setup({
			enable_import_on_completion = true,
		})
		-- required to fix code action ranges and filter diagnostics
		ts_utils.setup_client(client)
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false
		buf_set_keymap("n", "<leader>lo", ":TSLspOrganize<CR>", opts)
		buf_set_keymap("n", "<leader>lt", ":TSLspImportAll<CR>", opts)
	end

	if client.resolved_capabilities.document_formatting then
		vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
	end
end

return { on_attach = on_attach }
