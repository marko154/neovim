local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require("lspconfig/util")


-- Here are the languages that work:
-- c
-- c++ (sudo apt install libstdc++-dev (i think))
-- js, ts, (import type breaks some things)
-- golang, (maybe add debugger)
-- python (still in works)

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

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
  -- cmd = {
  --   "clangd",
  --   "--offset-encoding=utf-16",
  -- },
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
