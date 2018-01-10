set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set ambiwidth=double

set nobackup
set noswapfile
set autoread
set hidden
set showcmd

set whichwrap=b,s,h,l,<,>,[,],~
set backspace=indent,eol,start
set wildmenu
set history=5000

set number
set cursorline
set cursorcolumn
set expandtab
set tabstop=4
set softtabstop=4
set autoindent
set shiftwidth=4
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest

nnoremap j gj
nnoremap k gk


set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>



let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
    if !isdirectory(s:dein_repo_dir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
    endif
    execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif
 " 設定開始
if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)
    call dein#add('Shougo/neocomplete.vim')
    call dein#add('Shougo/dein.vim')
    call dein#add('Shougo/vimproc.vim', {'build': 'make'})
    call dein#add('Shougo/neocomplete.vim')
    call dein#add('Shougo/neomru.vim')
    call dein#add('Shougo/neosnippet')
    call dein#add('vim-syntastic/syntastic')
    call dein#add('scrooloose/nerdtree')
    call dein#add('airblade/vim-gitgutter')
    call dein#add('bronson/vim-trailing-whitespace')
    call dein#add('thinca/vim-quickrun')
    call dein#add('Shougo/neosnippet-snippets')
    call dein#add('Townk/vim-autoclose')
    call dein#add('tomasr/molokai')
      " ここに追記していく

      " 設定終了
    call dein#end()
    call dein#save_state()
endif
" もし、未インストールものものがあったらインストール
if dein#check_install()
    call dein#install()
endif

filetype plugin indent on
syntax enable



let NERDTreeShowHidden = 1
nmap <Leader><Tab> <C-w>

syntax on
colorscheme molokai
set t_Co=256




