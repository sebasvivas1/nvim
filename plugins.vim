call plug#begin('~/.config/nvim/plugged')
  
  " Syntax / Languaje
  Plug 'sheerun/vim-polyglot'
  Plug 'rust-lang/rust.vim'
  
  " Features
  Plug 'preservim/nerdtree' " Sidebar files feature
  Plug 'itchyny/lightline.vim' " Lightline
  Plug 'editorconfig/editorconfig-vim' " Editorconfig Support
  Plug 'tpope/vim-fugitive' " Git Support
  Plug 'airblade/vim-gitgutter' " Git Files Support
  Plug 'scrooloose/nerdcommenter' " Comments Support	
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'alvan/vim-closetag'
  Plug 'tpope/vim-surround'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

  " Status Line
 " Plug 'vim-airline/vim-airline'
  "Plug 'vim-airline/vim-airline-themes'

  " Themes & Interface
  Plug 'joshdick/onedark.vim'
  Plug 'sainnhe/gruvbox-material' " Retro Theme for Vim in Material Desing
  Plug 'arcticicestudio/nord-vim'
  Plug 'doums/darcula'
 
  " Coc
  Plug 'neoclide/coc.nvim', {'branch': 'release'} 
  Plug 'yaegassy/coc-volar', {'do': 'yarn install --immutable'}

  " Github Copilot
  Plug 'github/copilot.vim'

call plug#end()