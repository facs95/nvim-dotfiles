-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
    -- Telescope and fzf
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { "nvim-telescope/telescope-live-grep-args.nvim" }
    },
    config = function()
      require("telescope").load_extension("live_grep_args")
    end
  }

  -- support to link to github directly
  use {
    'ruifm/gitlinker.nvim',
    requires = 'nvim-lua/plenary.nvim',
  }

  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      require("rose-pine").setup()
      vim.cmd('colorscheme rose-pine')
    end
  })

  -- data structure for color schem within code
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('mbbill/undotree')

  use("ThePrimeagen/harpoon")

  use("tpope/vim-fugitive")
  use("f-person/git-blame.nvim")

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    }
  }

  -- Formatter
  use('sbdchd/neoformat')

  -- Copilot
  use('github/copilot.vim')

  use('tpope/vim-surround')

  -- In v mode - gc line comment - gb block comment
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
end)
