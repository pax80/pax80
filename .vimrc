"Pathogen

" Search down into subfolder
" Provides tab-completiion for all file-related tasks
set path+=~/development/**
"call pathogen#runtime_append_all_bundles()
execute pathogen#infect()
syntax on
filetype plugin indent on

let mapleader = ","
"let g:Powerline_symbols = 'unicode'
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
"syntax on

"============== Custom scripts ===============
"source ~/.vim/after/syntaxcheck.vim


"============== Filetype stuff ===============
filetype plugin on
filetype indent on

"============== Script configs ===============
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" Load custom settings
source ~/.vim/startup/color.vim
source ~/.vim/startup/mappings.vim
source ~/.vim/startup/commands.vim
source ~/.vim/startup/custom-config.vim

" Syntax-specific settings
" source ~/.vim/startup/vim.vim
" source ~/.vim/startup/yaml.vim
" source ~/.vim/startup/html.vim

set guifont=Roboto\ Mono\ for\ Powerline:h15

" define the withd of the columns and the text width
set colorcolumn=120
set textwidth=120
set nocompatible
    if has("autocmd")
      filetype plugin indent on
    endif

let g:rainbow_active = 1
let vim_markdown_folding_disabled = 1
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md  set ft=markdown


" Adjust the background with same config as the terminal
" Change this if we want to get some more effecct
"hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
"hi! Visual cterm=reverse ctermbg=NONE

set shiftwidth=2

if has('nvim')
  highlight! link TermCursor Cursor
  highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15
endif
