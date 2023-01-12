local null_ls = require("null-ls")

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
	null_ls.builtins.code_actions.proselint,
	null_ls.builtins.diagnostics.fish,
	null_ls.builtins.diagnostics.gitlint,
	null_ls.builtins.diagnostics.markdownlint,
	null_ls.builtins.diagnostics.proselint,
	null_ls.builtins.diagnostics.selene,
	null_ls.builtins.diagnostics.write_good,
	null_ls.builtins.diagnostics.yamllint,
	null_ls.builtins.formatting.fish_indent,
	null_ls.builtins.formatting.prettierd,
	null_ls.builtins.formatting.rustfmt,
	null_ls.builtins.formatting.stylua,
	null_ls.builtins.hover.dictionary,
}

null_ls.setup({ sources = sources, on_attach = on_attach })
