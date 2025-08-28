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


    {
      name = "Everblush",
      colorscheme = "everblush",
      before = [[vim.opt.background = "dark"]],
    },

    {
      name = "Moonfly",
      colorscheme = "moonfly",
      before = [[vim.opt.background = "dark"]],
    },
  },
  livePreview = true,
})

