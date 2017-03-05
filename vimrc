  set nocompatible              " be iMproved, required
  filetype off                  " required
 
 
  "Sets
  set showmode
  set nu
  set background=light
  set expandtab
  set tabstop=2
  set shiftwidth=2
  syntax enable
  "Commands
  command Ntt NERDTreeToggle
 
  " set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  " alternatively, pass a path where Vundle should install plugins
  "call vundle#begin('~/some/path/here')
 
  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'scrooloose/nerdtree.git'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'Lokaltog/vim-powerline.git'
  Plugin 'jelera/vim-javascript-syntax'
  Plugin 'vim-scripts/AutoComplPop'
  Plugin 'mattn/emmet-vim'
  Plugin 'jiangmiao/auto-pairs.git'
  Plugin 'tpope/vim-dispatch'
  Plugin 'tpope/vim-projectionist'
  Plugin 'noahfrederick/vim-composer'
  Plugin 'noahfrederick/vim-laravel'
  "Plugin 'altercation/vim-colors-solarized'
  "Plugin 'powerline/powerline.git'
  " All of your Plugins must be added before the following line
  call vundle#end()            " required
  filetype plugin indent on    " required
  " To ignore plugin indent changes, instead use:
  "filetype plugin on
  "
  " Brief help
  " :PluginList       - lists configured plugins
  " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
  " :PluginSearch foo - searches for foo; append `!` to refresh local cache
  " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
  "
  " see :h vundle for more details or wiki for FAQ
  " Put your non-Plugin stuff after this line