vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true


vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd("set number")
vim.cmd("set notermguicolors")

vim.keymap.set('n', 'zz', function() vim.cmd("cd %:p:h") end)

--vim.api.nvim_set_keymap('i', '"', '""<left>', { noremap = true })
--vim.api.nvim_set_keymap('i', "'", "''<left>", { noremap = true })
--vim.api.nvim_set_keymap('i', '<', '<><left>', { noremap = true })
--vim.api.nvim_set_keymap('i', '(', '()<left>', { noremap = true })
--vim.api.nvim_set_keymap('i', '[', '[]<left>', { noremap = true })
--vim.api.nvim_set_keymap('i', '{', '{}<left>', { noremap = true })

