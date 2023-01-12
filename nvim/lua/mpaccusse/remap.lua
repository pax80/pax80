print("we are doing the mpaccusse.remap")
vim.g.mapleader = ","

local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

-- changing the way we use the arrows
vim.keymap.set("n","<up>", "ddkP")
vim.keymap.set("n","<down>", "ddp")

-- Zoom in
vim.keymap.set("i","<leader>z", "<ESC>:vertical resize +80<CR>i")
vim.keymap.set("n","<leader>z", "<ESC>:vertical resize +80<CR>")

-- Zoom out

vim.keymap.set("i","<leader>o", "<ESC><C-w>=i")
vim.keymap.set("n","<leader>o", "<C-w>=")


-- upper or lowercase the current word
vim.keymap.set("n","g^", "gUiW")
vim.keymap.set("n","gv", "guiW")

-- save file
-- vim.keymap.set("i","<leader>s", "<ESC>:w<CR>i")
-- vim.keymap.set("n","<leader>s", ":w<CR>")
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")


-- escape

vim.keymap.set("i","<leader>e", "<ESC>:wq<CR>")
vim.keymap.set("i","jk", "<ESC>")
vim.keymap.set("n","<leader>e", ":wq<CR>")
vim.keymap.set("n","<leader>q", ":q<CR>")
-- escape from the TERMINAL MODE
vim.keymap.set("t","<leader>e", "<C-\\><C-n>")

vim.keymap.set("n","cmd", ":.!bash<CR>")

-- ==============
-- split windows
vim.keymap.set("n","<leader>w", "<C-w>v<C-w>l")
vim.keymap.set("n","<leader>b", "<C-w>s<C-w>j")
-- change to h
vim.keymap.set("n","<leader>H","<C-w>H")
vim.keymap.set("n","<leader>J","<C-w>J")

-- Copy into the clipboard when visual select :)
vim.keymap.set("v","<leader>y", "\"*y")

-- adding date
--nmap <leader>p i<esc>:r!date +"%m-%d-%Y %H:%M"<esc>
vim.keymap.set("n","<leader>d","\"=strftime(\"%Y-%m-%d\")<CR>p")
vim.keymap.set("n","<leader>D","\"=strftime(\"%Y-%m-%d %H:%M\")<CR>p")
vim.keymap.set("i","<leader>d","<esc>\"=strftime(\"%Y-%m-%d\")<CR>p")
vim.keymap.set("i","<leader>D","<esc>\"=strftime(\"%Y-%m-%d %H:%M\")<CR>pi")


-- Spelling suggest word, go to next or previos issue
vim.keymap.set("n","<leader>sp","a<C-X>s")
vim.keymap.set("n","<leader>n","]s")
vim.keymap.set("n","<leader>p","s[")

-- to be able to get on all the terinal for creating drawing
vim.keymap.set("n","<leader>v",":set virtualedit+=all<CR>")
vim.keymap.set("n","<leader>V",":set virtualedit-=all<CR>")

-- handy template for sre and bring up mkdocs for servers
vim.keymap.set("n","<leader>sre", ":r ~/development/impact-assesment/sre-template.md<CR>")
vim.keymap.set("n","<leader>diag", ":r ~/development/impact-assesment/diagram-template.puml<CR>")
vim.keymap.set("n","<leader>network", ":r ~/development/impact-assesment/network-template.puml<CR>")
vim.keymap.set("n","<leader>host", ":r ~/development/impact-assesment/host.puml<CR>")
vim.keymap.set("n","<leader>service", ":r ~/development/impact-assesment/service.md<CR>")
vim.keymap.set("n","<leader>daily", ":te cd ~/development/daily_docs/; ~/development/user-guide/venv/bin/mkdocs serve -a 127.0.0.1:1235<CR>")
vim.keymap.set("n","<leader>devops", ":te cd ~/development/devops-docs/; ~/development/devops-docs/venv/bin/mkdocs serve -a 127.0.0.1:1236<CR>")
vim.keymap.set("n","<leader>support", ":te cd ~/development/support-docs/; ~/development/user-guide/venv/bin/mkdocs serve -a 127.0.0.1:1237<CR>")


-- search for todo in file

vim.keymap.set("n","<leader>todo", ":g/\\[ \\]/<CR>")
vim.keymap.set("i","<leader>todo", "<esc>:g/\\[ \\]/<CR>")

-- markdown
vim.keymap.set("n","<leader>t", ":Toc<CR>:vertical resize 50<CR>")
vim.keymap.set("i","<leader>t", "<esc>:Toc<CR>:vertical resize 50<CR>")
 
-- close buffer

vim.keymap.set("n","<leader>bb", ":bw!<CR>")
vim.keymap.set("t","<leader>bb", "<C-\\><C-n>:bw!<CR>")


-- move to local file
vim.keymap.set("n","<leader>cd", ":lcd %:p:h<CR>:pwd<CR>")


-- plantuml open and save
vim.keymap.set("n","<leader>p", ":PlantumlOpen<CR>")

-- test mars
vim.keymap.set("n","<>p", ":PlantumlOpen<CR>")

-- Fast switch
vim.keymap.set("n","<C-j>", "`J")
vim.keymap.set("n","<C-k>", "`K")
vim.keymap.set("n","<C-l>", "`L")

vim.keymap.set("n","<leader>r", ":hi Normal ctermbg=NONE guibg=NONE<CR>")
vim.keymap.set("n","<leader>R", ":hi Normal guibg=#111111 ctermbg=black<CR>")


-- burned :)
--
vim.keymap.set("n","<leader>fu", ":CellularAutomaton make_it_rain<CR>")
vim.keymap.set("n","<leader>fy", ":CellularAutomaton game_of_life<CR>")

-- Git
vim.keymap.set("n","<leader>gp", ":Git push<CR>")

-- Mind
vim.keymap.set("n","<leader>m", ":MindOpenMain<CR>")


-- shortcut for the remap of the open file and cd to the folder
vim.keymap.set("n","<leader>t", ":e ~/")
vim.keymap.set("n","<leader>c", ":cd ~/")


--- using te pandoc to remap
vim.keymap.set("n","<leader>ia", ":!pandoc -f markdown-implicit_figures % -o ~/development/temporary/ia_%:t:r.pdf --from markdown --template eisvogel --listing && open ~/development/temporary/ia_%:t:r.pdf<CR>")
