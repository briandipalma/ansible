local M = {}

local float_opts = { border = "rounded", source = "always" }

function M.show_line_diagnostics()
	vim.diagnostic.open_float(nil, float_opts)
end

-- Change diagnostic symbols in gutter
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
	virtual_text = { source = "always" },
	float = float_opts,
})

return M