nnoremap / /\v
vnoremap / /\v
" Unmap the arrow keys
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

"============== Custom Mappings ===============
" general mapping
nmap <C-Tab> :tabnext<CR>
nmap <C-S-Tab> :tabprevious<CR>
map <C-S-Tab> :tabprevious<CR>
map <C-Tab> :tabnext<CR>
map <up> ddkP
imap <C-S-Tab> <ESC>:tabprevious<CR>
imap <C-Tab> <ESC>:tabnext<CR>
noremap <F7> :set expandtab!<CR>
nmap <Leader>h :tabnew %:h<CR>

" Zoom in
imap <Leader>z <ESC>:vertical resize +80<CR>
nmap <Leader>z :vertical resize +80<CR>
imap <Leader>o <ESC>:vertical resize -80<CR>
nmap <Leader>o :vertical resize -80<CR>



"turn off search highlighting
nmap <C-n> :noh<CR>

"custom comma motion mapping
nmap di, f,dT,
nmap ci, f,cT,
nmap da, f,ld2F,i,<ESC>l "delete argument 
nmap ca, f,ld2F,i,<ESC>a "delete arg and insert

" delete surrounding characters
noremap ds{ F{xf}x
noremap cs{ F{xf}xi
noremap ds" F"x,x
noremap cs" F"x,xi
noremap ds' F'x,x
noremap cs' F'x,xi
noremap ds( F(xf)x
noremap cs( F(xf)xi
noremap ds) F(xf)x
noremap cs) F(xf)xi

nmap cu ct_
nmap cU cf_

" upper or lowercase the current word
nmap g^ gUiW
nmap gv guiW

" diff
nmap ]c ]czz
nmap [c [czz

" default to very magic
no / /\v

" gO to create a new line below cursor in normal mode
nmap g<C-O> o<ESC>k
" g<Ctrl+o> to create a new line above cursor (Ctrl to prevent collision with 'go' command)
nmap gO O<ESC>j

"I really hate that things don't auto-center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

"open tag in new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

"quick pairs
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i

" replace string contents with recently copied text
nmap <Leader>r" "_di"P
nmap <Leader>c" "_di"Pa
nmap <Leader>r' '_di'P
nmap <Leader>c' '_di'Pa

imap <Leader>s <ESC>:w<Enter>i
nmap <Leader>s :w<Enter>


autocmd FileType twig imap <leader>a[ [{[  ]}]<ESC>Bhi

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

nmap <Leader>i :NERDTreeToggle<CR>

inoremap jk <ESC>
 " ==============
 " split windows
nnoremap <leader>w <C-w>v<C-w>l
" change to h
nnoremap <leader>H <C-w>H
nnoremap <leader>J <C-w>J


" adding date
"nmap <leader>p i<esc>:r!date +"%m-%d-%Y %H:%M"<esc>
nmap <leader>d "=strftime("%m-%d-%Y %H:%M")<CR>p
imap <leader>d <esc>"=strftime("%m-%d-%Y %H:%M")<CR>pi