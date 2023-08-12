local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require("lspconfig/util")


lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotimpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
    }
  }
}


lspconfig["tsserver"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig["html"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

--[[ lspconfig["cssls"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
} ]]
