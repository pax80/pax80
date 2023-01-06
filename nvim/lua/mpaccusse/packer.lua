-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use({'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}})
  use('nvim-treesitter/playground')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- plantuml
  use("weirongxu/plantuml-previewer.vim")
  use("tyru/open-browser.vim")
  use("aklt/plantuml-syntax")

  -- symbols 
  use("nvim-telescope/telescope-symbols.nvim")

  -- markdown
  use('godlygeek/tabular')
  use('preservim/vim-markdown')

  -- ale linters
  --
  use("rhysd/vim-lsp-ale")
  use("dense-analysis/ale")

  -- fun
  -- use("Eandrju/cellular-automaton")

  -- maybe hale
  use {
      'phaazon/mind.nvim',
      branch = 'v2.2',
      requires = { 'nvim-lua/plenary.nvim' },
      config = function()
          require'mind'.setup()
      end
  }

  	use{
		"iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
		setup = function()
			local g = vim.g
			g.mkdp_auto_start = 1
			g.mkdp_auto_close = 1
			g.mkdp_page_title = "${name}.md"
			g.mkdp_preview_options = {
				disable_sync_scroll = 0,
				disable_filename = 1,
			}
		end,
		ft = "markdown",
	}




end)
