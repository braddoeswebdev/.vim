
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-markdown'

call vundle#end()
filetype plugin indent on

set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set showmatch
set relativenumber

syntax on
colorscheme Tomorrow-Night-Bright
set guifont=Inconsolata\ Medium\ 14
set cursorline
set wildmenu
set lazyredraw
let mapleader=" "

map <leader>w :wa<CR>
map <leader>s :source ~/.vimrc<CR>
inoremap jk <Esc>

map <C-\> :NERDTreeToggle<CR>

let g:gitgutter_sign_column_always=1

let g:markdown_fenced_languages = ['html', 'css', 'javascript', 'ruby', 'bash=sh', 'yaml', 'json']

set laststatus=2

set hidden
set history=500

set hlsearch
set incsearch
set ignorecase
set smartcase
set magic
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

set nobackup
set nowb
set noswapfile
