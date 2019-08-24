set nocompatible

" *********************************************
" Plugins
" *********************************************
call plug#begin('~/.vim/plugged')

" *** Editor UI

Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" *** Syntax
Plug 'sheerun/vim-polyglot'             " Improve syntax for different languages

" *** Git

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" *** Editing

Plug 'tpope/vim-commentary'             " gc{motion}, v_gc, {number}gcc
Plug 'ludovicchabant/vim-gutentags'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-surround'               " cs, ds, ys + {motion}
Plug 'tpope/vim-repeat'                 " 'solve repeated the last native command inside that map, rather than the map as a whole'

" *** Dev tools

" Plug 'dense-analysis/ale'               " linter, fix code style
Plug 'neomake/neomake'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}

Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'yggdroot/indentline'
Plug 'ntpeters/vim-better-whitespace'
Plug 'bogado/file-line'
  " " Test
  Plug 'janko-m/vim-test'
  Plug 'tpope/vim-dispatch'

  " " javascript
  " Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
  Plug 'pangloss/vim-javascript' " dependency for vim-jsx
  Plug 'mxw/vim-jsx', { 'for': [ 'javascript', 'javascript.jsx' ] }
  Plug 'Valloric/MatchTagAlways'
  Plug 'mattn/emmet-vim'
  " " Devops
  Plug 'ekalinin/Dockerfile.vim'
  Plug 'andrewstuart/vim-kubernetes'

  " *** Vim ways

Plug 'kana/vim-operator-user'
Plug 'kana/vim-textobj-entire'          " object: e
Plug 'kana/vim-textobj-line'            " object: l
Plug 'kana/vim-textobj-user'            " requires bt vim-textobj-quotes
Plug 'metakirby5/codi.vim' "  interactive scratchpad like Numi, for programming languages

" *** Other plugins
Plug 'godlygeek/tabular' " tabular must come before vim-markdown
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'machakann/vim-highlightedyank'
Plug 'simeji/winresizer'

call plug#end()

" *********************************************
" General Configuaraion
" *********************************************
filetype off
syntax enable
syntax on
set cursorline
set hidden                                                " All hiding unsaved buffer, and move on
set number
set numberwidth=4

set backspace=indent,eol,start                            " Make backspace works like most program
set laststatus=2                                          " Show the status line all the time
set lazyredraw
set nopaste
set showcmd
set ttyfast
set visualbell                                            " Disable sound


set autowrite                                             " autoload write
set autoread                                              " autoload read
au CursorHold,CursorHoldI,BufEnter * checktime
" au BufWritePost,BufReadPost * checktime | NERDTreeFocus | execute 'normal R' | wincmd p

set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set tabstop=2

set nowrap                                                " Don't wrap lines
set linebreak                                             " Wrap lines at convenient points

set noswapfile                                            " turn off swap file
set nobackup                                              " turn off backup file
set nowb

" Search
set incsearch                                             " Search: Find as you type search
set hlsearch                                              " Search: Highlight search terms
set ignorecase                                            " Search: Case-insensitive searching.
set smartcase                                             " Search: But case-sensitive if expression contains a capital letter.

" " Ex-command completion - If you’re used to the autocomplete menu provided by zsh,
" set wildmenu
" set wildmode=full
" set wildignore=*.o,*.obj,*~   " Stuff to ignore when tab completing

" Specifying Ruby path
let g:ruby_path = system('echo $HOME/.rbenv/shims')
let g:python3_host_prog = '/usr/local/bin/python3'

" Change default leader to ,
let mapleader=','

" *********************************************
" Windows
" *********************************************
" navigations between splitted windows
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l

" *********************************************
" Keys mapping
" *********************************************
" nmap <leader><Space> :noh<CR>
nmap <Space> :noh<CR>

" *********************************************
" Navigations
" *********************************************
" Easy tabs navigation: Command+Shift+[
map <c-S-]> gt
map <c-S-[> gT

" Indenting in or out for visual selected
vmap <tab> >gv
vmap <s-tab> <gv

" *********************************************
" Plugin Customization
" *********************************************
if filereadable($HOME . "/.vim/custom/vimrc_plugins_conf.vim")
	source ~/.vim/custom/vimrc_plugins_conf.vim
endif

" *********************************************
" Local custom config
" *********************************************
if filereadable($HOME . "/.dotfiles/vimrc_local.vim")
	source ~/.dotfiles/vimrc_local.vim
endif

" TODO
" [ ] React auto import
