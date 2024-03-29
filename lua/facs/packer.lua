-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'ellisonleao/gruvbox.nvim'

  -- LSP stuff
  use("hrsh7th/cmp-nvim-lsp")
  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/nvim-cmp")
  use("onsails/lspkind-nvim")
  use("nvim-lua/lsp_extensions.nvim")
  use("glepnir/lspsaga.nvim")
  use("simrat39/symbols-outline.nvim")
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")


  use("nvim-lua/plenary.nvim")
  use("APZelos/blamer.nvim")

  -- Telescope and fzf
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use("ThePrimeagen/harpoon")

  -- Easy editing
  use("tpope/vim-surround")

  -- Formatter
  use('sbdchd/neoformat')

  -- Prisma syntax highlight
  use('pantharshit00/vim-prisma')

  -- Copilot
  use('github/copilot.vim')
end)
