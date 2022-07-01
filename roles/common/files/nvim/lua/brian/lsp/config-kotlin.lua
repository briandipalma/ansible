local defaultConfig = require("brian.lsp.config-default")
local disableFormatting = require("brian.lsp.disable-formatting")

local function on_attach(client, bufnr)
	defaultConfig.on_attach(client, bufnr)

	disableFormatting(client)
end

return {
	capabilities = defaultConfig.capabilities,
	on_attach = on_attach,
}
