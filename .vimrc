"Plug
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()

"Theme
set background=dark
colorscheme palenight

"NERDTree toggle
nmap <C-f> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"NERDTree navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" General settings
set number
syntax on
set encoding=utf-8
set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4

" Tabs navigation
nnoremap tn :tabnew<Space>
nnoremap tk : tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
nnoremap tc :tabclose<CR>


"Terminal
set termwinsize=10x0
nmap <C-t> :below terminal<CR>
