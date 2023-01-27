local ok, lsp = pcall(require, "lsp-zero")

if not ok then
	return
end

local cmp = require("cmp")
local telescope = require("telescope.builtin")
local typescriptActions = require("typescript").actions
local typescriptCommands = require("typescript.commands")

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
local function b(lhs, rhs, desc, bufnr)
	local opts = { buffer = bufnr, desc = desc }

	vim.keymap.set("n", lhs, rhs, opts)
end

lsp.on_attach(function(_, bufnr)
	b("gi", telescope.lsp_implementations, "[G]o to [i]mplementations", bufnr)
	b("gr", telescope.lsp_references, "[G]o to [r]eferences", bufnr)
	b("<leader>lr", vim.lsp.buf.rename, "[R]ename symbol under the cursor", bufnr)
	b("<leader>la", vim.lsp.buf.code_action, "Code [a]ction at cursor position", bufnr)
end)

lsp.configure("eslint", {
	on_attach = function(_, bufnr)
		b("<leader>le", vim.cmd.EslintFixAll, "[E]SLint fix all", bufnr)
	end,
	settings = { completions = { format = false } },
})

lsp.configure("ltex", { settings = { ltex = { language = "en-GB" } } })

lsp.configure("tsserver", {
	on_attach = function(client, bufnr)
		typescriptCommands.setupCommands(bufnr)

		b("<leader>lm", typescriptActions.addMissingImports, "Add [m]issing imports", bufnr)
		b("<leader>lo", typescriptActions.organizeImports, "[O]rganize imports", bufnr)
		b("<leader>lu", typescriptActions.removeUnused, "Remove [u]nused variables", bufnr)
		b("<leader>lf", typescriptActions.fixAll, "[F]ix all", bufnr)
		b("<leader>ln", vim.cmd.TypescriptRenameFile, "Re[n]ame file", bufnr)
		b("<leader>ls", vim.cmd.TypescriptGoToSourceDefinition, "Go to [s]ource definition", bufnr)

		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentRangeFormattingProvider = false
	end,
})

-- Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
