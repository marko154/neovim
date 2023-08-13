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
        "eslint_d"
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
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  }
}

return plugins
