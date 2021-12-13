local lsp_installer = require("nvim-lsp-installer")
local on_attach = require("bdp-lsp-utils").on_attach

-- Configure lua language server for neovim development
local lua_settings = {
	Lua = {
		runtime = {
			-- LuaJIT in the case of Neovim
			version = "LuaJIT",
			path = vim.split(package.path, ";"),
		},
		diagnostics = {
			-- Get the language server to recognize the `vim` global
			globals = { "vim" },
		},
		workspace = {
			-- Make the server aware of Neovim runtime files
			library = vim.api.nvim_get_runtime_file("", true),
		},
	},
}

-- config that activates keymaps and enables snippet support
local function make_config()
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	-- enable snippet support
	capabilities.textDocument.completion.completionItem.snippetSupport = true
	-- Add capabilities supported by nvim-cmp
	capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

	return {
		capabilities = capabilities,
		on_attach = on_attach,
		flags = { debounce_text_changes = 150, },
	}
end

lsp_installer.on_server_ready(function(server)
	local config = make_config()

	-- language specific config
	if server.name == "sumneko_lua" then
		config.settings = lua_settings
	end

	server:setup(config)
	vim.cmd([[ do User LspAttachBuffers ]])
end)
