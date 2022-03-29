local null_ls = require("null-ls")
local on_attach = require("bdp-lsp-utils").on_attach

local sources = {
	null_ls.builtins.formatting.eslint_d,
	null_ls.builtins.formatting.fish_indent,
	null_ls.builtins.formatting.prettierd,
	null_ls.builtins.formatting.stylua,
	null_ls.builtins.formatting.terraform_fmt,
	null_ls.builtins.formatting.trim_newlines,
	null_ls.builtins.formatting.trim_whitespace,
	null_ls.builtins.diagnostics.ansiblelint,
	null_ls.builtins.diagnostics.eslint_d,
	null_ls.builtins.diagnostics.selene,
	null_ls.builtins.diagnostics.write_good,
	null_ls.builtins.diagnostics.markdownlint,
	null_ls.builtins.diagnostics.yamllint,
	null_ls.builtins.hover.dictionary,
}

null_ls.setup({ sources = sources, on_attach = on_attach })
