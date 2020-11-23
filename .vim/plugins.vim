call plug#begin('~/.vim/plugged')
  
  " Syntax / Languaje
  Plug 'pangloss/vim-javascript' " Javascript Languaje
  Plug 'leafgarland/typescript-vim'
  Plug 'maxmellon/vim-jsx-pretty' " JSX Syntax
  Plug 'neoclide/vim-jsx-improve' " JSX Syntax Improve
  Plug 'peitalin/vim-jsx-typescript' " JSX Syntax typescript Support
  Plug 'posva/vim-vue' " Vue Languaje
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " Go Languaje
  
  " Features
  Plug 'preservim/nerdtree' " Sidebar files feature
  Plug 'itchyny/lightline.vim' " Lightline
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' } " Prettier Motor
  Plug 'editorconfig/editorconfig-vim' " Editorconfig Support
  Plug 'kien/ctrlp.vim' " CTRL-P feature
  Plug 'tpope/vim-fugitive' " Git Support
  Plug 'airblade/vim-gitgutter' " Git Files Support
  Plug 'scrooloose/nerdcommenter' " Comments Support	

  " Themes & Interface
  Plug 'sainnhe/gruvbox-material' " Retro Theme for Vim in Material Desing

  " Coc
  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

call plug#end()
