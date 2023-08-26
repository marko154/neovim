local on_attach = function(client)
  require("plugins.configs.lspconfig").on_attach(client)
  -- require("illuminate").on_attach(client)
end
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

lspconfig["clangd"].setup {
  on_attach = function(client)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client)
  end,
  capabilities = capabilities,
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
  },
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
