local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  }
}

-- Your custom mappings
M.abc = {
  n = {
    ["n"] = { "nzz", "go to next and center screen" },
    ["N"] = { "Nzz", "go to previous and center screen" },
    ["<C-d>"] = { "<C-d>zz", "go down half a page and center screen" },
    ["<C-u>"] = { "<C-u>zz", "go up half a page and center screen" },
  },

  i = {
  }
}

return M
