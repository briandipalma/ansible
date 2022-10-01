local lspConfig = require("lspconfig")
local mason = require("mason")
local masonLSP = require("mason-lspconfig")
local defaultConfig = require("brian.lsp.config-default")
local eslintConfig = require("brian.lsp.config-eslint")
local kotlinConfig = require("brian.lsp.config-kotlin")
local luaConfig = require("brian.lsp.config-lua")
local noFormatConfig = require("brian.lsp.config-noformat")
local rustConfig = require("brian.lsp.config-rust")
local typescriptConfig = require("brian.lsp.config-typescript")

mason.setup()
masonLSP.setup({ automatic_installation = true })

lspConfig.ansiblels.setup(defaultConfig)
lspConfig.cssls.setup(defaultConfig)
lspConfig.dockerls.setup(defaultConfig)
lspConfig.eslint.setup(eslintConfig)
lspConfig.gradle_ls.setup(defaultConfig)
lspConfig.html.setup(noFormatConfig)
lspConfig.jdtls.setup(defaultConfig)
lspConfig.jsonls.setup(noFormatConfig)
lspConfig.kotlin_language_server.setup(kotlinConfig)
require("rust-tools").setup(rustConfig)
lspConfig.sumneko_lua.setup(luaConfig)
lspConfig.terraformls.setup(defaultConfig)
require("typescript").setup(typescriptConfig)
