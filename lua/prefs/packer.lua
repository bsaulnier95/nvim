-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use { 'wbthomason/packer.nvim' }

  -- LSP
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig'
  }

  -- nvim-cmp start
  -- Completion engine
  use { 'hrsh7th/nvim-cmp' }

  -- Snippet engine and its nvim-cmp source
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'hrsh7th/vim-vsnip' }
  use { 'hrsh7th/cmp-vsnip' }

  -- LSP completion source for nvim-cmp
  use { 'hrsh7th/cmp-nvim-lsp' }
  -- nvim-cmp end

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Color Schemes
  use{
	  'folke/tokyonight.nvim',
	  as = tokoyonight,
	  config = function()
		  vim.cmd('colorscheme tokyonight')
	  end
  }

  use{
	  'EdenEast/nightfox.nvim',
	  as = nightfox,
	  config = function()
		  vim.cmd('colorscheme nightfox')
	  end
  }

  use { "catppuccin/nvim", as = "catppuccin" }

  -- Tree sitter
  use {
	'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
  }

  use { 'nvim-treesitter/playground' }

  -- Git
  use { 'tpope/vim-fugitive' }

  use{
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    requires = {
        "nvim-lua/plenary.nvim",
    },
  }

  -- Undotree
  use { 'mbbill/undotree' }

  -- Lua Line
  use {
   'nvim-lualine/lualine.nvim',
   requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Float Term
--  use { 'voldikss/vim-floaterm' }

  -- File Tree
--  use {
--  'nvim-tree/nvim-tree.lua',
--    requires = {
--      'nvim-tree/nvim-web-devicons', -- optional
--    },
--  }

end)
