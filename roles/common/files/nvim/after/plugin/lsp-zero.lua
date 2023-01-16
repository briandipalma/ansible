local cmp = require("cmp")
local lsp = require("lsp-zero")
local telescope = require("telescope.builtin")

lsp.preset("recommended")

-- Swap around scroll down documentation and next snippet placeholder keymaps
local cmp_mappings = lsp.defaults.cmp_mappings()
local default_scroll_down_documentation = cmp_mappings["<C-f>"]
local default_go_to_next_snippet_placeholder = cmp_mappings["<C-d>"]

cmp_mappings["<C-d>"] = default_scroll_down_documentation
cmp_mappings["<C-f>"] = default_go_to_next_snippet_placeholder

-- Change the keyword_length of the cmp sources to nil to get instant results
local default_sources = lsp.defaults.cmp_sources()
local sources = {}

for _, source in pairs(default_sources) do
	source["keyword_length"] = nil
	table.insert(sources, source)
end

lsp.setup_nvim_cmp({ mapping = cmp_mappings, sources = sources })

-- Create `cmdline` mappings that are the same as standard insert mode ones
local cmd_mappings = {}

for k, v in pairs(cmp_mappings) do
	cmd_mappings[k] = { c = v }
end

-- Unmap for cmdline to prevent interference with cmd shortcuts like `e` or `q`
cmd_mappings["<CR>"] = nil

-- Add autocompletion to search based on words in the current buffer
cmp.setup.cmdline({ "/", "?" }, {
	mapping = cmd_mappings,
	sources = { { name = "buffer" } },
})

-- Add autocompletion to cmd input based on file paths and cmd history
cmp.setup.cmdline(":", {
	mapping = cmd_mappings,
	sources = cmp.config.sources({ { name = "path" } }, { { name = "cmdline" } }),
})

-- To enable overrides omit bindings with alternative or overridden mappings
lsp.set_preferences({ set_lsp_keymaps = { omit = { "gi", "gr", "F2", "F4" } } })

-- Change some of the LSP keymaps
local bind = vim.keymap.set

lsp.on_attach(function(_, bufnr)
	local opts = { buffer = bufnr }

	local implementOpts = { unpack(opts), desc = "[G]o to [I]mplementations" }
	bind("n", "gi", telescope.lsp_implementations, implementOpts)
	local refsOpts = { unpack(opts), desc = "[G]o to [R]eferences" }
	bind("n", "gr", telescope.lsp_references, refsOpts)
	local renameOpts = { unpack(opts), desc = "[L]SP [R]ename symbol under the cursor" }
	bind("n", "<leader>lr", vim.lsp.buf.rename, renameOpts)
	local actionOpts = { unpack(opts), desc = "[L]SP code [A]ction at cursor position" }
	bind("n", "<leader>la", vim.lsp.buf.code_action, actionOpts)
end)

-- Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
