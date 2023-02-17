local border = {
	{ "🭽", "FloatBorder" },
	{ "▔", "FloatBorder" },
	{ "🭾", "FloatBorder" },
	{ "▕", "FloatBorder" },
	{ "🭿", "FloatBorder" },
	{ "▁", "FloatBorder" },
	{ "🭼", "FloatBorder" },
	{ "▏", "FloatBorder" },
}

return {
	"neovim/nvim-lspconfig",
	---@class PluginLspOpts
	opts = {
		capabilities = {
			textDocument = {
				-- Add folding range to capabilities, for nvim-ufo
				foldingRange = {
					dynamicRegistration = false,
					lineFoldingOnly = true,
				},
			},
		},
		-- options for vim.diagnostic.config()
		diagnostics = {
			float = { border = border },
		},
		---@type lspconfig.options
		servers = {
			eslint = {},
		},
		---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
		setup = {
			eslint = function()
				require("lazyvim.util").on_attach(function(_, buffer)
					vim.keymap.set(
						"n",
						"<leader>ce",
						vim.cmd.EslintFixAll,
						{ buffer = buffer, desc = "ESLint fix all" }
					)
				end)
			end,
		},
	},
}
