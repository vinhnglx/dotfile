set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'flazz/vim-colorschemes'
Plugin 'ervandew/supertab'
Plugin 'Raimondi/delimitMate' " autocomplete bracket
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'slim-template/vim-slim.git'
Plugin 'rking/ag.vim'

call vundle#end()
filetype plugin indent on

let g:rainbow_active = 1

let mapleader = ","

set term=xterm
set t_Co=256

set hlsearch
set background = "dark"
set modelines=0
syntax enable
set nu
set ruler
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest,full
set visualbell
set ttyfast
set norelativenumber
set nohlsearch

set colorcolumn=81
highlight ColorColumn ctermbg=2


set nobackup
set noswapfile

set backspace=indent,eol,start

set lazyredraw
set redrawtime=5000
set updatetime=5000
set nowrap

set laststatus=2

set tabstop=2
set shiftwidth=2
set expandtab

"set cursorcolumn
"set cursorline

" config key to toggle cursorcolumn, nohl
map <leader>C :set cursorcolumn<cr>
map <leader>c :set nocursorcolumn<cr>

map <leader>h :nohl<cr>

inoremap jj <Esc>

nmap ; :
vmap ; :
map 0 ^

" auto save config
let g:auto_save = 1
let g:auto_save_no_updatetime = 1
let g:auto_save_in_insert_mode = 1
"let g:auto_save_silent = 0

" nerd tree
map <leader>n :NERDTreeToggle<CR>

" Vimux
map <leader>vi :VimuxInspectRunner<CR>
map <Leader>vq :VimuxCloseRunner<CR>

" fold
set foldmethod=manual
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ctags
nnoremap <leader>ct :!ctags -R --languages=ruby --exclude=.git --exclude=log<CR><CR>

nnoremap <leader>. :CtrlPTag<cr>

" Switch between the last two files
nnoremap <leader><leader> <c-^>

hi VertSplit ctermbg=5 ctermfg=256
set fillchars+=vert:\|

" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/log/*,*/coverage/*,tags,*/maildir/*,*/vendor/*,*/public/assets/*,*/bower_components/*,*/dist/*,*/node_modules/*,*/downloads/*
map <leader>p :CtrlPClearAllCaches<CR>
map <leader>t :CtrlP<cr>

" Airline
let g:airline_theme='bubblegum'

" Pane
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Tab
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
nnoremap th :tabnext<CR>
nnoremap tl :tabprev<CR>
nnoremap tn :tabnew<CR>

nnoremap <leader>ch :%s/\(\w\+\)\s*=>\s*/\1: /g<cr>
