local api = vim.api

-- Highlight on yank
local yankGrp = api.nvim_create_augroup("YankHighlight", { clear = true })
api.nvim_create_autocmd("TextYankPost", {
  command = "silent! lua vim.highlight.on_yank()",
  group = yankGrp,
})

local cmd = vim.cmd

-- -- show cursor line only in active window
-- local cursorGrp = cmd.nvim_create_augroup("CursorLine", { clear = true })
-- cmd.nvim_create_autocmd(
--   { "InsertLeave", "WinEnter" },
--   { pattern = "*", command = "set cursorline", group = cursorGrp }
-- )
-- cmd.nvim_create_autocmd(
--   { "InsertEnter", "WinLeave" },
--   { pattern = "*", command = "set nocursorline", group = cursorGrp }
-- )

local myluafun = function()
    print("PWD >>>>>>>> " ..vim.fn.getcwd() .." <<<<<<<<")
--    vim.fn.getcwd()
end

-- Vimscript function name (as a string)

-- vim.api.nvim_create_autocmd(
-- -- {"BufEnter", "BufWinEnter", "TabEnter"}, 
-- {"TabEnter"}, 
-- {
--   pattern = "*",
--   callback = myluafun,  -- Or myvimfun
-- })
-- 
-- 
-- vim.api.nvim_create_autocmd("BufWritePost", {
--     group = vim.api.nvim_create_augroup("TJCoolTutorial", {clear = true }),
--     pattern = "*.md",
--     callback = function()
--         print("Hey remember to do the things")
--         -- print(vim.api.nvim_command("g/\\[ \\]/"))
--         -- vim.api.nvim_command("C-o")
--     end,
-- })
