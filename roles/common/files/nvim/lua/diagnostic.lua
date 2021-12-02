local M = {}

function M.show_line_diagnostics()
	local opts = { border = "rounded", source = "always" }

	vim.diagnostic.open_float(nil, opts)
end

-- Change diagnostic symbols in gutter
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

return M
