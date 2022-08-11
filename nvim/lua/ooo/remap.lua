-- taking the fucntion back from the **keymap**
local nnoremap = require("ooo.keymap").nnoremap
local vnoremap = require("ooo.keymap").vnoremap
local inoremap = require("ooo.keymap").inoremap
local xnoremap = require("ooo.keymap").xnoremap
local tnoremap = require("ooo.keymap").tnoremap

local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- changing the way we use the arrows
nnoremap("<down>", "ddp")
nnoremap("<up>", "ddkP")

-- Zoom in
inoremap("<leader>z", "<ESC>:vertical resize +80<CR>i")
nnoremap("<leader>z", "<ESC>:vertical resize +80<CR>")

-- Zoom out

inoremap("<leader>o", "<ESC><C-w>=i")
nnoremap("<leader>o", "<C-w>=")


-- upper or lowercase the current word
nnoremap("g^", "gUiW")
nnoremap("gv", "guiW")

-- save file
inoremap("<leader>s", "<ESC>:w<CR>i")
nnoremap("<leader>s", ":w<CR>")

-- escape

inoremap("<leader>e", "<ESC>:wq<CR>")
inoremap("jk", "<ESC>")
nnoremap("<leader>e", ":wq<CR>")
nnoremap("<leader>q", ":q<CR>")
-- escape from the TERMINAL MODE
tnoremap("<leader>e", "<C-\\><C-n>")

nnoremap("cmd", ":.!bash<CR>")

-- ==============
-- split windows
nnoremap("<leader>w", "<C-w>v<C-w>l")
nnoremap("<leader>b", "<C-w>s<C-w>j")
-- change to h
nnoremap("<leader>H","<C-w>H")
nnoremap("<leader>J","<C-w>J")

-- Copy into the clipboard when visual select :)
vnoremap("<leader>y", "\"*y")

-- adding date
--nmap <leader>p i<esc>:r!date +"%m-%d-%Y %H:%M"<esc>
nnoremap("<leader>d","\"=strftime(\"%Y-%m-%d\")<CR>p")
nnoremap("<leader>D","\"=strftime(\"%Y-%m-%d %H:%M\")<CR>p")
inoremap("<leader>d","<esc>\"=strftime(\"%Y-%m-%d\")<CR>p")
inoremap("<leader>D","<esc>\"=strftime(\"%Y-%m-%d %H:%M\")<CR>pi")


-- Spelling suggest word, go to next or previos issue
nnoremap("<leader>sp","a<C-X>s")
nnoremap("<leader>n","]s")
nnoremap("<leader>p","s[")

-- to be able to get on all the terinal for creating drawing
nnoremap("<leader>v",":set virtualedit+=all<CR>")
nnoremap("<leader>V",":set virtualedit-=all<CR>")

-- handy template for sre and bring up mkdocs for servers
nnoremap("<leader>sre", ":r ~/development/impact-assesment/sre-template.md<CR>")
nnoremap("<leader>daily", ":te cd ~/development/daily_docs/; ~/development/user-guide/venv/bin/mkdocs serve -a 127.0.0.1:1235<CR>")
nnoremap("<leader>devops", ":te cd ~/development/user-guide/devops/; ~/development/user-guide/venv/bin/mkdocs serve -a 127.0.0.1:1236<CR>")
nnoremap("<leader>support", ":te cd ~/development/user-guide/support/; ~/development/user-guide/venv/bin/mkdocs serve -a 127.0.0.1:1237<CR>")

