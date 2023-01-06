local api = vim.api

-- Highlight on yank
local yankGrp = api.nvim_create_augroup("YankHighlight", { clear = true })
api.nvim_create_autocmd("TextYankPost", {
  command = "silent! lua vim.highlight.on_yank()",
  group = yankGrp,
})

local ns_id = api.nvim_create_namespace('demo')
-- 
vim.api.nvim_create_autocmd("BufWritePost", {
    group = api.nvim_create_augroup("MircoTest", { clear = true }),
    pattern = "*.py",
    callback = function()
        local bufn = api.nvim_get_current_buf()
        api.nvim_buf_clear_namespace(bufn, ns_id, 0, -1)
        for _,v in pairs(vim.diagnostic.get(api.nvim_get_current_buf())) do
                vim.api.nvim_buf_set_extmark(bufn, ns_id, v.lnum, 0, {
                    virt_text = {{"🤕 "}, {v.message}},
                })
            end
        end,
    })

