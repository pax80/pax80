-- local bufn = 503
-- -- vim.diagnostic
-- --
local ns_id = vim.api.nvim_create_namespace('demo')
-- 
vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("MircoTest", { clear = True }),
    pattern = "*.py",
    callback = function()
        local bufn = vim.api.nvim_get_current_buf()
        vim.api.nvim_buf_clear_namespace(bufn, ns_id, 0, -1)
        for k,v in pairs(vim.diagnostic.get(vim.api.nvim_get_current_buf())) do
                vim.api.nvim_buf_set_extmark(bufn, ns_id, v.lnum, 0, {
                    virt_text = {{"🤕 "}, {v.message}},
                })
            end
            -- vim.api.nvim_buf_set_lines(bufn, 0, 0, false, {"hello", "world"})
        end,
    })
-- 
-- 
-- --    bufnr: Buffer number
-- --    lnum(*): The starting line of the diagnostic
-- --    end_lnum: The final line of the diagnostic
-- --    col(*): The starting column of the diagnostic
-- --    end_col: The final column of the diagnostic
-- --    severity: The severity of the diagnostic |vim.diagnostic.severity|
-- --    message(*): The diagnostic text
-- --    source: The source of the diagnostic
-- --    code: The diagnostic code
-- --    user_data: Arbitrary data plugins or users can add


-- local api = vim.api
-- 
-- 
-- -- local bnr = vim.fn.bufnr('%')
-- local bnr = 138
-- local ns_id = api.nvim_create_namespace('demo')
-- 
-- local diag_issue =  vim.diagnostic.get(vim.api.nvim_get_current_buf())
-- 
-- 
-- for k, v in pairs(diag_issue) do
--     local line_num = 12
--     -- local line_num = v.lnum
--     local col_num = 0
-- 
--     local opts = {
--         -- end_line = 10,
--         id = 1,
--         -- virt_text = {{"ciao", "IncSearch"}},
--         virt_text = { {v.message}},
--         --  virt_text_pos = 'overlay',
--         -- virt_text_win_col = 20,
--     }
-- 
--     local mark_id = api.nvim_buf_set_extmark(bnr, ns_id, line_num, col_num, opts)
-- end
