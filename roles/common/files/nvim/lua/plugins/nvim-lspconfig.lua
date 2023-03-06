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
		diagnostics = { float = { border = border } },
		---@type lspconfig.options
		servers = {
			eslint = {},
			ltex = { settings = { ltex = { dictionary = { ["en-GB"] = {} }, language = "en-GB" } } },
		},
		---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
		setup = {
			eslint = function()
				require("lazyvim.util").on_attach(function(_, buffer)
					local opts = { buffer = buffer, desc = "ESLint fix all" }

					vim.keymap.set("n", "<leader>ce", vim.cmd.EslintFixAll, opts)
				end)
			end,
			ltex = function(_, opts)
				local path = vim.fn.stdpath("config") .. "/spell/en.utf-8.add"

				for word in io.open(path, "r"):lines() do
					table.insert(opts.settings.ltex.dictionary["en-GB"], word)
				end
			end,
		},
	},
}