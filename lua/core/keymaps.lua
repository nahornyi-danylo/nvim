vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true


vim.opt.tabstop = 4
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd("set number")
vim.cmd("set relativenumber")

vim.opt.termguicolors = true

vim.keymap.set('n', 'zz', function() vim.cmd("cd %:p:h") end)
vim.keymap.set('n', '<Esc>', function() vim.cmd("nohlsearch") end, { silent = true })
vim.keymap.set('n', '<leader>t', function() vim.cmd("Themery") end, { silent = true })

local transparent = false

local function ToggleBg()
  transparent = not transparent

  if transparent then
    vim.api.nvim_set_hl(0, "Normal",      { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
  else
    -- grab whatever background your current theme set
    local hi = vim.api.nvim_get_hl_by_name("Normal", true)
    if hi and hi.background then
      local hex = string.format("#%06x", hi.background)
      vim.api.nvim_set_hl(0, "Normal",      { bg = hex })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = hex })
    end
  end
end

vim.keymap.set("n", "<leader>y", ToggleBg, { desc = "Toggle bg transparency" })
