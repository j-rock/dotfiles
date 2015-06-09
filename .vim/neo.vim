filetype plugin indent on
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

"Code
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'unix' : 'make -f make_unix.mak'
      \    },
      \ }
NeoBundle 'Shougo/neocomplcache'            "auto completion <ctrl><space>
NeoBundle 'scrooloose/syntastic'            "syntax checking
NeoBundle 'tpope/vim-fugitive'              "git integration
NeoBundle 'tpope/vim-commentary'            "enhanced commenting with gc
NeoBundle 'airblade/vim-gitgutter'          "git diff annotations

"Accessibility
NeoBundle 'tpope/vim-surround'              "Deal with surrounding characters
NeoBundle 'scrooloose/nerdtree'             "filesystem browser
NeoBundle 'kien/ctrlp.vim'                  "Fuzzy file searching

"Haskell
NeoBundle 'dag/vim2hs'                      "Better syntax highlighting, hlint, ultisnips, tabularize support
NeoBundle 'ujihisa/neco-ghc'                "Neocomplcache support for Haskell
NeoBundle 'eagletmt/ghcmod-vim'             "GHCMod integration
NeoBundle 'nbouscal/vim-stylish-haskell'    "code formatter (on save)

"Navigation
NeoBundle 'Lokaltog/vim-easymotion'         "enhanced word navigation

"Appearance
NeoBundle 'bling/vim-airline'               "airline status bar
NeoBundle 'godlygeek/csapprox'              "gvim colorschemes work in vim
NeoBundle 'tomasr/molokai'                  "molokai theme
NeoBundle 'flazz/vim-colorschemes'          "more colorschemes
NeoBundle 'ap/vim-css-color'                "colorizes css values

"Misc
NeoBundle 'gioele/vim-autoswap'             "Deals with swap files cleanly
NeoBundle 'bronson/vim-trailing-whitespace' "Makes trailing whitespace evident

call neobundle#end()
NeoBundleCheck

if (&term == 'xterm' || &term =~? '^screen')
  set t_Co=256
  let g:CSApprox_konsole = 1
endif

syntax on
colorscheme molokai

source ~/.vim/airline.vim
source ~/.vim/nerdtree.vim
source ~/.vim/easymotion.vim
source ~/.vim/haskell.vim
source ~/.vim/gitgutter.vim
source ~/.vim/ctrlp.vim
