" leader key
let mapleader = " "

" Split window
nnoremap ss :split<Return><C-w>w
nnoremap sv :vsplit<Return><C-w>w

" Move window
nnoremap <Space> <C-w>w
nnoremap sh <C-w>h
nnoremap sk <C-w>k
nnoremap sj <C-w>j
nnoremap sl <C-w>l

" Resize window
nnoremap <C-w>h 3<C-w><
nnoremap <C-w>l 3<C-w>>
nnoremap <C-w>k 3<C-w>+
nnoremap <C-w>j 3<C-w>-

" Change 2 split windows from vert to horiz or horiz to vert
nnoremap <Leader>th <C-w>t<C-w>H
nnoremap <Leader>tk <C-w>t<C-w>K

" nerdtree settings
map <C-n> :NERDTreeToggle<CR>

" terminal
map <leader>tr :new term://zsh<CR><C-\><C-n><C-w>k
tnoremap <C-c><C-\><C-n>

" nvim-r
set ma
let maplocalleader = ',' " Change Leader and LocalLeader keys:
vmap <C-Space> <Plug>RDSendSelection
nmap <C-Space> <Plug>RDSendLine

" telescope
nnoremap <C-p> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <C-o> <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <C-f> <cmd>lua require('telescope.builtin').live_grep()<cr>

inoremap <expr> <c-j> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <c-k> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

" Use Ctrl+Space to do omni completion:
if has('nvim') || has('gui_running')
     inoremap <C-Space> <C-x><C-o>
else
    inoremap <Nul> <C-x><C-o>
 endif
