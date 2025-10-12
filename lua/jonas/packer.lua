-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	-- or                            , branch = '0.1.x',
  	requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ({

	'rose-pine/neovim',
  	as = 'rose-pine',
	config = function()
		vim.cmd('colorscheme rose-pine')
  	end
})

use ('theprimeagen/vim-be-good')
use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use ('nvim-treesitter/playground')
use('theprimeagen/harpoon')
use('mbbill/undotree')
use('tpope/vim-fugitive') 
use 'MunifTanjim/nui.nvim'
  -- nvim-cmp: Autocompletion plugin
  use 'hrsh7th/nvim-cmp'

  -- Sources for nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp'  -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-buffer'    -- Buffer source for nvim-cmp
  use 'hrsh7th/cmp-path'      -- Path source for nvim-cmp
  use 'hrsh7th/cmp-cmdline'   -- Cmdline source for nvim-cmp

  -- LSP Config
  -- Install `nvim-lspconfig` plugin
  use 'neovim/nvim-lspconfig'

  -- Optional: Snippet plugin for nvim-cmp
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- TODO: FIX THIS GODFORSAKEN BULLSHIT IF I WANT TO CODE WITH JAVA IN THE FUTURE!
  -- Java Sprintboot packages

  use 'nvim-java/nvim-java-core'
  use 'nvim-java/lua-async-await'
  use 'nvim-java/nvim-java-dap'
  use 'nvim-java/nvim-java-test'
  use 'mfussenegger/nvim-jdtls'
  use 'mfussenegger/nvim-dap'
  use 'nvim-lua/plenary.nvim'
  use'williamboman/mason-lspconfig.nvim'


 use {
  'williamboman/mason.nvim',
  config = function()
    require("mason").setup({
      registries = {
        "github:nvim-java/mason-registry",
        "github:mason-org/mason-registry",
      }
    })
  end
}

  use {
  'nvim-java/nvim-java',
  requires = {
    'nvim-java/nvim-java-refactor',
    'nvim-java/lua-async-await',
    'nvim-java/nvim-java-core',
    'nvim-java/nvim-java-test',
    'nvim-java/nvim-java-dap',
    'mfussenegger/nvim-dap',
    'neovim/nvim-lspconfig',
    'nvim-lua/plenary.nvim',
  }

}
 
end)

