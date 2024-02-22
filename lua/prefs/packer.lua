-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  --LSP
  use {
	  'williamboman/mason.nvim',
	  'williamboman/mason-lspconfig.nvim',
	  'neovim/nvim-lspconfig'
  }

  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Color Scheme
  use({
	  'folke/tokyonight.nvim',
	  as = tokoyonight,
	  config = function()
		  vim.cmd('colorscheme tokyonight')
	  end
  })

  -- Tree sitter
  use {
	'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
  }
  use { 'nvim-treesitter/playground' }

  -- Git
  use { 'tpope/vim-fugitive' }
  use({
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    requires = {
        "nvim-lua/plenary.nvim",
    },
  })
  -- Undotree
  use { 'mbbill/undotree' } 
end)