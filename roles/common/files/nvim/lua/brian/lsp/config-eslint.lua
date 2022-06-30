local defaultConfig = require("brian.lsp.config-default")

local function on_attach(client, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end

	local opts = { noremap = true, silent = true }

	buf_set_keymap("n", "<leader>lF", ":EslintFixAll<CR>", opts)

	defaultConfig.on_attach(client, bufnr)
end

return {
	capabilities = defaultConfig.capabilities,
	on_attach = on_attach,
	settings = {
		format = false,
	},
}
