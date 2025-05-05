require("themery").setup({
  themes = {
    {
      name = "Dracula",
      colorscheme = "dracula",
      before = [[vim.opt.background = "dark"]],
    },

    {
      name = "Sweetie light",
      colorscheme = "sweetie",
      before = [[vim.opt.background = "light"]],
    },
  },
  livePreview = true,
})

