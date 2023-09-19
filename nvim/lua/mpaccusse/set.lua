print("here we go from set.lua")
-- vim.opt.guicursor = ""
vim.opt.laststatus = 3

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.smartindent = true


vim.opt.wrap = true
vim.opt.linebreak = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/development/temporary/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.list = true
vim.opt.syntax = whitespace

-- to be fixed
-- hi Search guibg=peru guifg=wheat

vim.opt.termguicolors = true


vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")


vim.opt.updatetime = 50

vim.opt.colorcolumn = "120"
vim.opt.cursorline = true
vim.opt.cursorlineopt = "line"
-- vim.cmd("hi CursorLine guibg=#a80700 ctermbg=500 ")
--vim.cmd("hi CursorLine guibg=#603000 ctermbg=500 ")
vim.cmd("hi CursorLine guibg=#252560 gui=underline")
-- vim.cmd("hi CursorLine guibg=#203000 ctermbg=500 ")
--vim.cmd("hi CursorLine guibg=#40E0D0 ctermbg=500 ")
-- vim.api.nvim_set_hl(0, "Normal", {bg=Yellow })

-- 107 55 00
--  vim.api.nvim_set_hl(0, "CursorLine", { ctermbg=500, guibg=Yellow})

-- this should show the lower bannen always on the bottom
vim.opt.showtabline = 3

