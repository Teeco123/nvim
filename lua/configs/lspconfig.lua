-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

-- EXAMPLE
local servers = {
  "html",
  "cssls",
  "clangd",
  "svelte",
  "lua_ls",
  "ts_ls",
  "zls",
  "rust_analyzer",
  "pyright",
  "sourcekit",
  "gopls",
}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- lspconfig.omnisharp.setup {
--   cmd = {
--     "dotnet",
--     "Library/OmniSharp/OmniSharp.dll",
--     root_dir = function(fname)
--       return util.root_pattern "*.sln"(fname)
--     end,
--   },
-- }

-- lspconfig.csharp_ls.setup {
--   root_dir = function(fname)
--     return util.root_pattern "*.sln"(fname)
--   end,
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
