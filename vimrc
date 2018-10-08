set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-haml'

Plugin 'kien/ctrlp.vim'
"Plugin 'SirVer/ultisnips'
Plugin 'tomtom/tcomment_vim'
Plugin 'ervandew/supertab'
" For Silver Searcher and other goodies
Plugin 'mileszs/ack.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'

" AutoComplete
Plugin 'vim-scripts/AutoComplPop'

Plugin 'airblade/vim-gitgutter'
Plugin 'ZucchiniZe/vim-spider'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'fatih/vim-go'
Plugin 'mattn/emmet-vim'
Plugin 'valloric/MatchTagAlways'
Plugin 'digitaltoad/vim-jade'
Plugin 'vim-scripts/SyntaxComplete.git'
Plugin 'kchmck/vim-coffee-script'

Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

Plugin 'thinca/vim-localrc'

"Plugin 'scrooloose/syntastic'
Plugin 'joshdick/onedark.vim'

Plugin 'crusoexia/vim-monokai'
Plugin 'altercation/vim-colors-solarized'

" Async Linting
"Plugin 'w0rp/ale'

" Color Themes
Plugin 'flazz/vim-colorschemes'
Plugin 'AlessandroYorba/Despacio'
Plugin 'w0ng/vim-hybrid'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'vim-scripts/Eddie.vim'
Plugin 'cocopon/pgmnt.vim'
Plugin 'raphamorim/lucario'
Plugin 'arcticicestudio/nord-vim'
Plugin 'marcopaganini/termschool-vim-theme'
Plugin 'danilo-augusto/vim-afterglow'
Plugin 'nightsense/carbonized'
Plugin 'rakr/vim-one'


set termguicolors

 " colorscheme onedark

" pangloss/vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:javascript_plugin_ngdoc = 1


""""""""
filetype plugin indent on
syntax on

" Open NERDTree by default
" autocmd vimenter * NERDTree

" Toggle NERDTree
map <C-b> :NERDTreeToggle<CR>

" Close NERDTree when thats the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Use :help 'option' to see the documentation for the given option.
set t_Co=256
set autoindent
set backspace=indent,eol,start
set complete-=i
set showmatch
set showmode
set smarttab

set nrformats-=octal
set shiftround

set ttimeout
set ttimeoutlen=50

set incsearch
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

set laststatus=2
set ruler
set showcmd
set wildmenu

set autoread

set encoding=utf-8
set tabstop=2 shiftwidth=2 expandtab
set listchars=tab:▒░,trail:▓
set list

inoremap <C-U> <C-G>u<C-U>

set number
set relativenumber
set hlsearch
set ignorecase
set smartcase

" Don't use Ex mode, use Q for formatting
map Q gq

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" do not history when leavy buffer
set hidden

" FIXME: (broken) ctrl s to save
noremap  <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <Esc>:update<CR>

set nobackup
set nowritebackup
set noswapfile
set fileformats=unix,dos,mac

" exit insert mode
inoremap <C-c> <Esc>

set completeopt=menuone,longest,preview

"
" Plugins config
"

" CtrlP
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules

" Allow JSX in normal JS files
let g:jsx_ext_required = 0

" Ultisnip
" NOTE: <f1> otherwise it overrides <tab> forever
"let g:UltiSnipsExpandTrigger="<f1>"
"let g:UltiSnipsJumpForwardTrigger="<c-x>"
"let g:UltiSnipsJumpBackwardTrigger="<f1>"
"let g:did_UltiSnips_vim_after = 1
"let g:UltiSnipsExpandTrigger="<f1>"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']


" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"
" Basic shortcuts definitions
"  most in visual mode / selection (v or ⇧ v)
"

" indend / deindent after selecting the text with (⇧ v), (.) to repeat.
" vnoremap <Tab> >
" vnoremap <S-Tab> <
" comment / decomment & normal comment behavior
vmap <C-m> gc
" Disable tComment to escape some entities
let g:tcomment#replacements_xml={}
" Text wrap simpler, then type the open tag or ',"
vmap <C-w> S
" Tabs
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
"nnoremap <C-b>  :tabprevious<CR>
"inoremap <C-b>  <Esc>:tabprevious<CR>i
"nnoremap <C-n>  :tabnext<CR>
"inoremap <C-n>  <Esc>:tabnext<CR>i
"nnoremap <C-t>  :tabnew<CR>
"inoremap <C-t>  <Esc>:tabnew<CR>i
"nnoremap <C-k>  :tabclose<CR>
"inoremap <C-k>  <Esc>:tabclose<CR>i

" lazy ':'
map \ :

let mapleader = ','
nnoremap <Leader>p :set paste<CR>
nnoremap <Leader>o :set nopaste<CR>
noremap  <Leader>g :GitGutterToggle<CR>

" this machine config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

" silver searcher yo
if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
  cnoreabbrev ag Ack
  cnoreabbrev aG Ack
  cnoreabbrev Ag Ack
  cnoreabbrev AG Ack
endif

" Do not jump to first result immediately! (ack/silver searcher)
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

nnoremap <Leader>b :ls<CR>:b<Space>
