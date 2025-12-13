local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use("wbthomason/packer.nvim")
  use("nvim-tree/nvim-tree.lua")
  use("nvim-tree/nvim-web-devicons")
  use("nvim-lualine/lualine.nvim")

  use("lewis6991/gitsigns.nvim")

  use("Mofiqul/dracula.nvim")
  use("NTBBloodbath/sweetie.nvim")
  use({"Everblush/nvim", as = "everblush"})
  use("bluz71/vim-moonfly-colors")

  use("nvim-treesitter/nvim-treesitter")
  use("zaldih/themery.nvim")

  use({
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    requires = { {'nvim-lua/plenary.nvim'} }
  })

  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  use("m4xshen/autoclose.nvim")

  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("L3MON4D3/LuaSnip")
  use("hrsh7th/cmp-nvim-lsp-signature-help")
  use("saadparwaiz1/cmp_luasnip")
  use("rafamadriz/friendly-snippets")
  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")

  use("nvim-treesitter/nvim-treesitter-textobjects")

  use({ "nvim-treesitter/playground", cmd = "TSPlaygroundToggle" })
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  })

  use({
    'MeanderingProgrammer/render-markdown.nvim',
    after = { 'nvim-treesitter' },
    requires = { 'nvim-mini/mini.nvim', opt = true },            -- if you use the mini.nvim suite
    -- requires = { 'nvim-mini/mini.icons', opt = true },        -- if you use standalone mini plugins
    -- requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
    config = function()
      require('render-markdown').setup({})
    end,
  })

  if packer_bootstrap then
    require('packer').sync()
  end
end)
