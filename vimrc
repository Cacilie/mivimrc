set nocompatible              " be iMproved, required
filetype off                  " required
"Sets
set encoding=utf-8
set showmode
set nu
set expandtab
set tabstop=2
set laststatus=2
set ttimeoutlen=50
set shiftwidth=2
"set mouse=a
set nowrap
set sidescroll=1
"set t_Co=256
syntax enable
"colorscheme github
"LETS
let g:jsx_ext_required = 0
"Commands
command Ntt NERDTreeToggle
command Artise Artisan serve
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'Lokaltog/vim-powerline.git'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'mattn/emmet-vim'
Plugin 'jiangmiao/auto-pairs.git'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-projectionist'
Plugin 'noahfrederick/vim-composer'
Plugin 'noahfrederick/vim-laravel'
Plugin 'tpope/vim-fugitive'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'pangloss/vim-javascript'
Plugin 'ashisha/image.vim'
Plugin 'mxw/vim-jsx'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'powerline/powerline.git'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Vim airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled = 1
