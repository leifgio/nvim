autocmd!

runtime ./maps.vim
runtime ./plug.vim

" general
set updatetime=100 
set mouse=a
set number! relativenumber!
set so=12

" search
set hlsearch
set magic
set ignorecase
set smartcase
set incsearch

" tab and space
set expandtab
set shiftwidth=2
set tabstop=2
set smarttab
set autoindent
set smartindent
set wrap

" clipboard
set clipboard=unnamedplus

" leader key
let mapleader = " "

" brackets
set showmatch

" terminal
map <leader>tr :new term://zsh<CR><C-\><C-n><C-w>k
tnoremap <leader><Esc> <C-\><C-n>

" Use Ctrl+Space to do omni completion:
if has('nvim') || has('gui_running')
     inoremap <C-Space> <C-x><C-o>
else
    inoremap <Nul> <C-x><C-o>
 endif

"Theme
colorscheme gruvbox
set background=dark
set termguicolors

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

" turn on spelling and make a spell file
set spelllang=en_us
set spellfile=~/.config/nvim/en.utf-8.add

" startify
let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'files',     'header': ['   Recent']            },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

" markdown-preview.nvim
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

" Ale Linting
let g:ale_sign_column_always=1
let g:ale_lint_on_enter=1
let g:ale_lint_on_text_changed='always'
let g:ale_echo_msg_error_str='E'
let g:ale_echo_msg_warning_str='W'
let g:ale_echo_msg_format='[%linter%] %s [%severity%]: [%...code...%]'
let g:ale_linters={'python': ['flake8'], 'r': ['lintr']}
let g:ale_fixers={'python': ['black']}

" lightline 
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'gruvbox',	
	    \   'fugitive': 'LightlineFugitive',
      \   'filename': 'LightlineFilename',
      \ }

" gitgutter
let g:gitgutter_async=0

" nerdtree settings
map <C-n> :NERDTreeToggle<CR>

" Window Splits
set splitbelow splitright


set fo-=t   " don't auto-wrap text using text width
set fo+=c   " autowrap comments using textwidth with leader
set fo-=r   " don't auto-insert comment leader on enter in insert
set fo-=o   " don't auto-insert comment leader on o/O in normal
set fo+=q   " allow formatting of comments with gq
set fo-=w   " don't use trailing whitespace for paragraphs
set fo-=a   " disable auto-formatting of paragraph changes
set fo-=n   " don't recognized numbered lists
set fo+=j   " delete comment prefix when joining
set fo-=2   " don't use the indent of second paragraph line
set fo-=v   " don't use broken 'vi-compatible auto-wrapping'
set fo-=b   " don't use broken 'vi-compatible auto-wrapping'
set fo+=l   " long lines not broken in insert mode
set fo+=m   " multi-byte character line break support
set fo+=M   " don't add space before or after multi-byte char
set fo-=B   " don't add space between two multi-byte chars
set fo+=1   " don't break a line after a one-letter word

" Function for toggling the bottom statusbar:
let s:hidden_all = 1
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

nnoremap <leader>h :call ToggleHiddenAll()<CR>

set exrc
