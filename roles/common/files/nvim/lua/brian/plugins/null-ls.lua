local null_ls = require("null-ls")
local formatOnWrite = require("brian.lsp.format-on-write")

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
	null_ls.builtins.formatting.stylua,
	null_ls.builtins.formatting.trim_newlines.with({
		disabled_filetypes = { "rust", "terraform" },
	}),
	null_ls.builtins.formatting.trim_whitespace.with({
		disabled_filetypes = { "rust", "terraform" },
	}),
	null_ls.builtins.hover.dictionary,
}

null_ls.setup({ sources = sources, on_attach = formatOnWrite })
