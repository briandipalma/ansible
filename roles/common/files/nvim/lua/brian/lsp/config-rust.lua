local defaultConfig = require("brian.lsp.config-default")
local formatOnWrite = require("brian.lsp.format-on-write")

local function on_attach(client, bufnr)
	defaultConfig.on_attach(client, bufnr)
	formatOnWrite(client, bufnr)
end

return {
	server = {
		capabilities = defaultConfig.capabilities,
		on_attach = on_attach,
	},
}
