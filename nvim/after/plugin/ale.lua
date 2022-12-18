---- ale config
-- only used for linting on save
-- vim.g.ale_fix_on_save = 1
-- vim.g.ale_lint_on_enter = 0
-- vim.g.ale_lint_on_insert_leave = 0
-- vim.g.ale_lint_on_filetype_changed = 0
-- vim.g.ale_lint_on_text_changed = 'never'
vim.g.ale_disable_lsp = 1
vim.g.ale_linters = { 
  -- markdown = { 'mdl' } 
  -- markdown = { 'mdl', 'proselint' } 
  markdown = { 'mdl', 'proselint', 'write-good', 'pandoc' } 
}

vim.g.ale_fixers = {
--    markdown = {'remove_trailing_lines', 'trim_whitespace'}
    markdown = {'pandoc'}
}

--vim.g.ale_sign_error = '>>'
--vim.g.ale_sign_warning = '--'

-- nmap <silent> [W <Plug>(ale_first)
-- nmap <silent> [w <Plug>(ale_previous)
-- nmap <silent> ]w <Plug>(ale_next)
-- nmap <silent> ]W <Plug>(ale_last)

vim.keymap.set("n","[W","<Plug>(ale_first)")
vim.keymap.set("n","[w","<Plug>(ale_previous)")
vim.keymap.set("n","]w","<Plug>(ale_next)")
vim.keymap.set("n","]W","<Plug>(ale_last)")
--- 
-- hi! CursorLineNr   term=bold cterm=underline ctermfg=11 gui=bold guifg=Yellow
-- hi! CursorLine cterm=underline guibg=Grey40
