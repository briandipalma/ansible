local cmp = require("cmp")
local lsp = require("lsp-zero")

lsp.preset("recommended")

-- Add autocompletion to search based on words in the current buffer
cmp.setup.cmdline({ "/", "?" }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})

-- Add autocompletion to cmd input based on file paths and cmd history
cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})

-- Swap around scroll down documentation and next snippet placeholder keymaps
local cmp_mapping = lsp.defaults.cmp_mappings()
local default_scroll_down_documentation = cmp_mapping["<C-f>"]
local default_go_to_next_snippet_placeholder = cmp_mapping["<C-d>"]

cmp_mapping["<C-d>"] = default_scroll_down_documentation
cmp_mapping["<C-f>"] = default_go_to_next_snippet_placeholder

lsp.setup_nvim_cmp({
	mapping = cmp_mapping,
})

-- Change some of the LSP keymaps
lsp.on_attach(function(_, bufnr)
	local opts = { buffer = bufnr, remap = false }
	local bind = vim.keymap.set

	bind("n", "<leader>lr", function()
		vim.lsp.buf.rename()
	end, { unpack(opts), desc = "Rename all references to the symbol under the cursor" })
	bind("n", "<leader>la", function()
		vim.lsp.buf.code_action()
	end, { unpack(opts), desc = "Select a code action available at the current cursor position" })
end)

-- Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
