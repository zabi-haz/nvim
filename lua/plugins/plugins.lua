local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
  --icons
  "nvim-tree/nvim-web-devicons",
  --usefull
  "nvim-lua/plenary.nvim",
  --theme
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  "sainnhe/sonokai",
  --cmp
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  --For luasnip users.
  {"L3MON4D3/LuaSnip"},
  'saadparwaiz1/cmp_luasnip',
  "rafamadriz/friendly-snippets",
  --mason
  "williamboman/mason.nvim",
  --treesitter
  "nvim-treesitter/nvim-treesitter",
  --auto pars
  {'windwp/nvim-autopairs',event = "InsertEnter",opts = {}},
  -- comment
  {'numToStr/Comment.nvim',opts = {},lazy = false,},
  -- buffer line
  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
  --bar bar
  "romgrk/barbar.nvim",
  -- git signs
  "lewis6991/gitsigns.nvim",
  --indent lines
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  -- lua line
  "nvim-lualine/lualine.nvim",
  -- nvim tree
  "nvim-tree/nvim-tree.lua",
  --telescope
  {"nvim-telescope/telescope.nvim"},
  -- fromatting
  "jose-elias-alvarez/null-ls.nvim"
}


require("lazy").setup(plugins)
