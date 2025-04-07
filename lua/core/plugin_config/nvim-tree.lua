vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  sync_root_with_cwd = true, -- this is the key part
  update_focused_file = {
    enable = true,
    update_root = true,
  },
})

vim.keymap.set('n', '<c-n>', function() vim.cmd("NvimTreeFindFileToggle") end)

