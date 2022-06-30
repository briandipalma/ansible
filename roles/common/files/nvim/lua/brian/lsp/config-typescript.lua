local defaultConfig = require("brian.lsp.config-default")

local function on_attach(client, bufnr)
	defaultConfig.on_attach(client, bufnr)

	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end

	local opts = { noremap = true, silent = true }

	client.resolved_capabilities.document_formatting = false
	client.resolved_capabilities.document_range_formatting = false
	buf_set_keymap("n", "<leader>lt", ":TypescriptAddMissingImports<CR>", opts)
	buf_set_keymap("n", "<leader>lo", ":TypescriptOrganizeImports<CR>", opts)
	buf_set_keymap("n", "<leader>lR", ":TypescriptRemoveUnused<CR>", opts)
	buf_set_keymap("n", "<leader>lQ", ":TypescriptFixAll<CR>", opts)
	buf_set_keymap("n", "<leader>lN", ":TypescriptRenameFile<CR>", opts)
end

return {
	server = {
		capabilities = defaultConfig.capabilities,
		on_attach = on_attach,
	},
}
