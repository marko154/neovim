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
        "eslint_d",
        "clang-format",
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
  {
    "rmagatti/auto-session",
    event = "VeryLazy",
    opts = {
      log_level = "error",
      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
    }
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
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "mg979/vim-visual-multi",
    event = "VeryLazy"
  },
  {
    "RRethy/vim-illuminate",
    event = "VeryLazy",
    dependencies = { "neovim/nvim-lspconfig", },
  },
  {
    "axelvc/template-string.nvim",
    ft = { 'html', 'typescript', 'javascript', 'typescriptreact', 'javascriptreact', 'python' },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  }
}

return plugins
