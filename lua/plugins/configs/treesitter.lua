local options = {
  ensure_installed = { "lua" },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
  autotag = {
    enable = true,
    enable_close_on_slash = false,
  },
}

-- https://github.com/windwp/nvim-ts-autotag
-- move this to a better location or figure out how to make autotag = { enable = true } work
require('nvim-ts-autotag').setup()

return options
