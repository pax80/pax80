"Pathogen
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
"source ~/.vim/startup/commands.vim
"source ~/.vim/startup/functions.vim
source ~/.vim/startup/mappings.vim
" source ~/.vim/startup/settings.vim

" Syntax-specific settings
" source ~/.vim/startup/vim.vim
" source ~/.vim/startup/yaml.vim
" source ~/.vim/startup/html.vim

set guifont=Roboto\ Mono\ for\ Powerline:h15
