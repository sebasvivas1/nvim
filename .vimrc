set nocompatible
set encoding=utf8
set nu rnu
set numberwidth=1
set clipboard=unnamed
set noswapfile
set nobackup
set t_Co=256k
set background=dark
set showmatch
set noshowmode
set sw=2
set hlsearch
set linebreak
set incsearch
set termguicolors
set scrolloff=10
set signcolumn=yes
set ignorecase
set updatetime=300
syntax enable
filetype plugin indent on

so ~/.vim/plugins.vim
so ~/.vim/config.vim
so ~/.vim/maps.vim

colorscheme gruvbox-material
