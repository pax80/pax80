-- taking the fucntion back from the **keymap**
print("loading Telescope keymapping")
local nnoremap = require("ooo.keymap").nnoremap

local telescope = require('telescope.builtin')

-- require('telescope').load_extension('harpoon')

nnoremap("<leader>ff",telescope.find_files)
nnoremap("<leader>fg",telescope.live_grep)
nnoremap("<leader>fb",telescope.buffers)
nnoremap("<leader>fh",telescope.help_tags)

-- from Andrew advice will serch the word that we are on
local live_grep_current_word = function()
    telescope.grep_string({search = vim.fn.expand("<cword>")})
end

nnoremap("<leader>rg", telescope.live_grep)
nnoremap("<leader>fw", live_grep_current_word)

-- history
nnoremap("<leader>ch", telescope.command_history)
nnoremap("<leader>sh", telescope.search_history)
nnoremap("<leader>ss", telescope.spell_suggest)

-- find on specifiv file
-- nnoremap("<leader>j",telescope.live_grep({cwd="~/development/user-guide"}))
--
-- local new_rema = require
-- nnoremap("<leader>j",telescope.live_grep, cwd="~/development/user-guide"}))
-- nnoremap("<leader>j",telescope.live_grep, { cwd = '~/development/user-guide'})
-- vim.keymap.set('n', '<leader>j', telescope.live_grep, { cwd = "~/development/user-guide"})
-- worked
--vim.keymap.set('n', '<leader>j', function() return require('telescope.builtin').live_grep({ cwd = "~/development/user-guide"}) end )
nnoremap("<leader>j",function() telescope.live_grep({ cwd = '~/development/user-guide'}) end)
