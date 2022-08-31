-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use("mzlogin/vim-markdown-toc")
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- ale
  use("rhysd/vim-lsp-ale")
  use("dense-analysis/ale")

  use("nvim-lua/plenary.nvim")
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

  -- use("neoclide/coc.nvim", { branch = "release" })
  use("neovim/nvim-lspconfig")

  use("ms-jpq/coq_nvim", { branch = "coq" })
  -- 9000+ Snippets
  use("ms-jpq/coq.artifacts", { branch = "artifacts" })

  --  lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
  --[  Need to **configure separately**
  use("ms-jpq/coq.thirdparty", { branch = "3p" })

  -- colorscheme
  -- use("folke/tokyonight.nvim")
  use("itchyny/lightline.vim")
  -- use("navarasu/onedark.nvim")
  use("morhetz/gruvbox")
  use("tomasr/molokai")

  -- markdown
  use("preservim/vim-markdown")
  --
  -- go
  --
  use("fatih/vim-go")

end)
