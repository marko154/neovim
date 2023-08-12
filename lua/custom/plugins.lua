local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "typescript-language-server",
        "tailwindcss-language-server",
        "clangd",
        "goimports",
        "golines",
        "prettier",
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    -- ft = "go",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  { "windwp/nvim-ts-autotag" },
  { "Shatur/neovim-session-manager",
    -- no idea
  }
}

return plugins
