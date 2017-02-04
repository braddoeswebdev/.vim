
" Setting up Vundle - the vim plugin bundler
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme) 
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
    set nocompatible              " be iMproved, required
    filetype off                  " required
    set rtp+=~/.vim/bundle/vundle/
    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    "...All your other bundles...
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


    if iCanHazVundle == 0
        echo "Installing Vundles, please ignore key map error messages"
        echo ""
        :PluginInstall
    endif

    call vundle#end() 
    "must be last
    filetype plugin indent on " load filetype plugins/indent settings
 
" Setting up Vundle - the vim plugin bundler end

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
