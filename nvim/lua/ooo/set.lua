vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.undodir = os.getenv("HOME") .. "/development/temporary/undodir"
vim.opt.undofile = true

vim.opt.textwidth = 120
vim.opt.cursorline = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.showtabline = 3
vim.g.mapleader = ","


-- vim.opt.ctermbg = NULL
-- vim.opt.guibg = NULL
-- vim.highlight.create('ColorColumn', {ctermbg=NONE, guibg=NONE}, false)

-- hi Normal ctermbg=NONE guibg=NONE
