-- local buffnr = 12

-- react to events

vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("TJCoolTutorial", {clear = true }),
    pattern = "*.md",
    callback = function()
        vim.api.nvim_command("g/\\[ \\]/")
    end,
})
