local lspConfig = require("lspconfig")
local lspInstaller = require("nvim-lsp-installer")
local on_attach = require("brian.lsp.utils").on_attach

lspInstaller.setup({ automatic_installation = true })

-- Configure lua language server for neovim development
local lua_settings = {
	Lua = {
		runtime = {
			-- LuaJIT in the case of Neovim
			version = "LuaJIT",
		},
		diagnostics = {
			-- Get the language server to recognize the `vim` global
			globals = { "vim" },
		},
		workspace = {
			-- Make the server aware of Neovim runtime files
			library = vim.api.nvim_get_runtime_file("", true),
		},
		telemetry = {
			enable = false,
		},
	},
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
-- enable snippet support
capabilities.textDocument.completion.completionItem.snippetSupport = true
-- Add capabilities supported by nvim-cmp
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

local defaultConfig = { capabilities = capabilities, on_attach = on_attach }
local luaConfig = { capabilities = capabilities, on_attach = on_attach, settings = lua_settings }

lspConfig.ansiblels.setup(defaultConfig)
lspConfig.cssls.setup(defaultConfig)
lspConfig.dockerls.setup(defaultConfig)
lspConfig.gradle_ls.setup(defaultConfig)
lspConfig.html.setup(defaultConfig)
lspConfig.jdtls.setup(defaultConfig)
lspConfig.jsonls.setup(defaultConfig)
lspConfig.kotlin_language_server.setup(defaultConfig)
lspConfig.sumneko_lua.setup(luaConfig)
lspConfig.tsserver.setup(defaultConfig)
