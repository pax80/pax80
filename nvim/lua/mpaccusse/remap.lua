print("Loading remap.lua")

M = require("mpaccusse.custom")


vim.g.mapleader = ","
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

local function t(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

-- changing the way we use the arrows
vim.keymap.set("n", "<up>", "ddkP")
vim.keymap.set("n", "<down>", "ddp")

-- Zoom in
vim.keymap.set("i", "<leader>z", "<ESC>:vertical resize +80<CR>i")
vim.keymap.set("n", "<leader>z", "<ESC>:vertical resize +80<CR>")
-- Zoom out

vim.keymap.set("i", "<leader>o", "<ESC><C-w>=i")
vim.keymap.set("n", "<leader>o", "<C-w>=")

-- save file
vim.keymap.set("i", "<leader>w", "<ESC>:w<CR>i")
vim.keymap.set("n", "<leader>w", ":w<CR>")

vim.keymap.set("i", "<leader>e", "<ESC>:wq<CR>")
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<leader>e", ":wq<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
-- escape from the TERMINAL MODE
vim.keymap.set("t", "<leader>e", "<C-\\><C-n>")

-- run the command wihin the line
vim.keymap.set("n", "cmd", ":.!bash<CR>")

-- split windows

-- adding date
--nmap <leader>p i<esc>:r!date +"%m-%d-%Y %H:%M"<esc>
vim.keymap.set("n", "<leader>d", '"=strftime("%Y-%m-%d")<CR>p')
vim.keymap.set("n", "<leader>D", '"=strftime("%Y-%m-%d %H:%M")<CR>p')
vim.keymap.set("i", "<leader>d", '<esc>"=strftime("%Y-%m-%d")<CR>p')
vim.keymap.set("i", "<leader>D", '<esc>"=strftime("%Y-%m-%d %H:%M")<CR>pi')

-- Spelling suggest word, go to next or previos issue
vim.keymap.set("n", "<leader>sp", "a<C-X>s")
vim.keymap.set("n", "<leader>n", "]s")
vim.keymap.set("n", "<leader>p", "s[")

-- to be able to get on all the terinal for creating drawing
vim.keymap.set("n", "<leader>v", ":set virtualedit=all<CR>")
vim.keymap.set("n", "<leader>V", ":set virtualedit=none<CR>")

-- handy template for sre and bring up mkdocs for servers
vim.keymap.set("n", "<leader>sre", ":r ~/development/presentation/scientific.md<CR>")
vim.keymap.set("n", "<leader>diag", ":r ~/development/impact-assesment/diagram-template.puml<CR>")
vim.keymap.set("n", "<leader>service", ":r ~/development/impact-assesment/service.md<CR>")

-- search for todo in file

vim.keymap.set("n", "<leader>todo", ":g/\\[ \\]/<CR>")
vim.keymap.set("i", "<leader>todo", "<esc>:g/\\[ \\]/<CR>")
--
-- close buffer

vim.keymap.set("n", "<leader>bb", ":bw!<CR>")
vim.keymap.set("t", "<leader>bb", "<C-\\><C-n>:bw!<CR>")

-- move to local file
vim.keymap.set("n", "<leader>cd", ":lcd %:p:h<CR>:pwd<CR>")

-- plantuml open and save
vim.keymap.set("n", "<leader>p", ":PlantumlOpen<CR>")

-- test mars
vim.keymap.set("n", "<>p", ":PlantumlOpen<CR>")

-- Fast switch
vim.keymap.set("n", "<C-j>", "`J")
vim.keymap.set("n", "<C-k>", "`K")
vim.keymap.set("n", "<C-l>", "`L")

vim.keymap.set("n", "<leader>r", ":hi Normal ctermbg=NONE guibg=NONE<CR>")
vim.keymap.set("n", "<leader>R", ":hi Normal guibg=#111111 ctermbg=black<CR>")

-- burned :)
--

-- Git
vim.keymap.set("n", "<leader>gp", ":Git push<CR>")

-- shortcut for the remap of the open file and cd to the folder
vim.keymap.set("n", "<leader>a", ":e ~/")
vim.keymap.set("n", "<leader>c", ":cd ~/")

--- using te pandoc to remap
vim.keymap.set(
  "n",
  "<leader>ia",
  ":!pandoc -f markdown-implicit_figures % -o ~/development/temporary/ia_%:t:r.pdf --from markdown --template eisvogel --listing && open ~/development/temporary/ia_%:t:r.pdf<CR>"
)

--- using te pandoc to remap
vim.keymap.set("n", "<leader>g", ":!prettier % --write<CR>")
--vim.keymap.set("n","<leader>ia", ":!pandoc % -o ~/development/temporary/ia_%:t:r.pdf --from markdown --template eisvogel --listing && open ~/development/temporary/ia_%:t:r.pdf<CR>")

vim.keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>")

vim.keymap.set("n", "<leader>fold", "I<details><summary><esc>A</summary>\rDETAIL TO BE FOLDED\r</details><br /><esc>")
vim.keymap.set("i", "<leader>fold", "<details><summary><esc>A</summary>\rDETAIL TO BE FOLDED\r</details><br /><esc>o")

vim.keymap.set("i", "<leader>gn", "<esc>:Git grep -n -i ")
vim.keymap.set("n", "<leader>gn", ":Git grep -n -i ")
vim.keymap.set("n", "<leader>b", "i```bash<esc>}O```<esc>")
vim.keymap.set("i", "<leader>b", "```bash<esc>}O```")
-- Fold the visual selection
vim.keymap.set("v", "<leader>f", ":fold<cr>")




vim.keymap.set("n", "<leader>t", ":Toc<CR>:vertical resize 50<CR>")
vim.keymap.set("i", "<leader>t", "<esc>:Toc<CR>:vertical resize 50<CR>")

-- Copy into the clipboard when visual select :)l
vim.keymap.set("v", "<leader>y", '"*y')


-- vim.keymap.set("n", "<leader>_", ":echo '---------------' | echo 'hi'|marks JKL<CR>")
vim.keymap.set("n", "<leader>_", ":lua M.listMarks()<CR>")
vim.keymap.set("n", "<leader>nn", ":lua M.toogleFolder()<CR>")


-- vim.keymap.set("n", "<leader>b", "<C-w>s<C-w>j")
-- vim.keymap.set("v", "<leader>b", ":lua M.WriteSomething()<CR>")
