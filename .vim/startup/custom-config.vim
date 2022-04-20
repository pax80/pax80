let g:ale_sign_error                  = '>>'
let g:ale_sign_warning                = '--'

let g:ale_linters = {
\   'markdown':      ['mdl', 'proselint', 'write-good'],
\}

let g:ale_fixers = {
\   '*':          ['remove_trailing_lines', 'trim_whitespace'],
\}

nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

hi! CursorLineNr   term=bold cterm=underline ctermfg=11 gui=bold guifg=Yellow
hi! CursorLine cterm=underline guibg=Grey40
