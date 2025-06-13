require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "cpp" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
  textobjects = {
    move = {
      enable = true,
      goto_next_start = {
        ["]m"] = "@function.outer",
      },
      goto_previous_start = {
        ["[m"] = "@function.outer",
      },
    },
  },
}
