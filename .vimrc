filetype plugin on
filetype indent on
set autoread
set nobackup
set nowb
set noswapfile

set autoindent
if has('smartindent')
  set smartindent
endif

set backspace=eol,start,indent
set whichwrap+=<,>,h,l,b,s,~,[,]
set wildmenu
set number
set ruler
set background=dark
set showmatch
set nofoldenable

set smartcase
set hlsearch
set incsearch
nnoremap <silent> <C-l> :nohl<CR><C-l>

set history=50
set timeoutlen=300

set noerrorbells
set novisualbell
set ttymouse=xterm2
set statusline=%f%m%r%h%w[%l][%{&ff}]%y[%p%%][%04l,%04v]

set nocompatible
set noexrc
set fenc=utf-8
set encoding=utf-8
set cpoptions=aabcefsmq

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

cmap w!! w !sudo tee % >/dev/null


source ~/.vim/neo.vim

