local opts = { noremap = true, silent = true }

local function formatOnWrite(_, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end

	buf_set_keymap("n", "<leader>lm", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

	vim.api.nvim_create_autocmd({ "BufWritePre" }, {
		callback = function()
			vim.lsp.buf.formatting_sync()
		end,
	})
end

return formatOnWrite