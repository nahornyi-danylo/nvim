local parser_install_dir = vim.fn.stdpath("data") .. "/treesitter"

vim.opt.runtimepath:append(parser_install_dir)

require("nvim-treesitter.configs").setup {
  ensure_installed = { "bash", "c", "cpp", "haskell", "lua", "prolog", "python", "query", "vim", "vimdoc" },
  parser_install_dir = parser_install_dir,

  sync_install = false,
  auto_install = false,
  highlight = {
    enable = true,
  },
}
