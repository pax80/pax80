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

" quick quit
"

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
"quick quit
nmap <Leader>e :wq<Enter>
nmap <Leader>q :q<Enter>


autocmd FileType twig imap <leader>a[ [{[  ]}]<ESC>Bhi

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

nmap <Leader>i :NERDTreeToggle<CR>
nmap <Leader>x :%s/></>\r</g<CR>

inoremap jk <ESC>
 " ==============
 " split windows
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>b <C-w>s<C-w>j
" change to h
nnoremap <leader>H <C-w>H
nnoremap <leader>J <C-w>J

nnoremap ,post :r ~/development/base_diagrams/observer/support/postmortem.md<CR>
nnoremap ,sre :r ~/development/base_diagrams/observer/sre-template.md<CR>
nnoremap ,daily :r ~/development/daily/base.md<CR>
nnoremap ,can :r ~/development/manager/ttt/base_assignemnt.md<CR>
nnoremap ,feedback :r ~/development/manager/ttt/base_feedback.md<CR>
nnoremap ,interview :r ~/development/manager/ttt/base_interview.md<CR>
nnoremap ,puml :r ~/development/base_diagrams/base_file.puml<CR>

" adding date
"nmap <leader>p i<esc>:r!date +"%m-%d-%Y %H:%M"<esc>
nmap <leader>d "=strftime("%Y-%m-%d")<CR>p
nmap <leader>D "=strftime("%Y-%m-%d %H:%M")<CR>p
imap <leader>d <esc>"=strftime("%Y-%m-%d")<CR>p
imap <leader>D <esc>"=strftime("%Y-%m-%d %H:%M")<CR>pi

