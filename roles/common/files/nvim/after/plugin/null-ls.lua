local ok, null_ls = pcall(require, "null-ls")

if not ok then
	return
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local on_attach = function(client, bufnr)
	if client.supports_method("textDocument/formatting") then
		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			buffer = bufnr,
			callback = function()
				vim.lsp.buf.format()
			end,
		})
	end
end

local sources = {
	null_ls.builtins.diagnostics.fish,
	null_ls.builtins.formatting.fish_indent,
	null_ls.builtins.formatting.prettierd,
	null_ls.builtins.formatting.rustfmt,
	null_ls.builtins.formatting.stylua,
}

null_ls.setup({ sources = sources, on_attach = on_attach })
