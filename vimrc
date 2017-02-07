if has('win32') || has('win64')
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
  set guifont=Inconsolata:h10:cANSI:qDRAFT
  set backspace=indent,eol,start
else
  set guifont=Inconsolata\ Medium\ 10
endif

func! Backspace()
  if col('.') == 1
    if line('.')  != 1
      return  "\<ESC>kA\<Del>"
    else
      return ""
    endif
  else
    return "\<Left>\<Del>"
  endif
endfunc
inoremap <BS> <c-r>=Backspace()<CR>


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
    Plugin 'StanAngeloff/php.vim'


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
set number
set relativenumber

syntax on
" colorscheme Tomorrow-Night-Bright
set cursorline
set wildmenu
set lazyredraw
let mapleader=" "

map <leader>w :wa<CR>
map <leader>s :source ~/.vimrc<CR>
noremap jk <Esc>
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

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

set autochdir
set nobackup
set nowb
set noswapfile
