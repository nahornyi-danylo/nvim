-- disable stupid shit by ada treesitter settings
-- why would they even add keymaps
-- and why would they be in insert mode?
vim.api.nvim_create_autocmd("FileType", {
  pattern = "ada",
  callback = function(args)
    pcall(vim.keymap.del, "i", "<Space>aj", { buffer = args.buf })
    pcall(vim.keymap.del, "i", "<Space>al", { buffer = args.buf })
  end,
})
