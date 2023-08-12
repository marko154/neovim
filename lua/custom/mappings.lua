local M = {}
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
