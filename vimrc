set nocompatible

" *********************************************
" Vundle Plugins
" *********************************************
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Chiel92/vim-autoformat'
Plugin 'posva/vim-vue'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized' " color name is 'solarized'
Plugin 'bogado/file-line'
Plugin 'christoomey/vim-sort-motion'      " gs{motions}
Plugin 'christoomey/vim-system-copy'      " cp{motion}, cP, cv
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dbeecham/ctrlp-commandpalette.vim'
Plugin 'gabrielelana/vim-markdown'
Plugin 'janko-m/vim-test'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'junegunn/vim-easy-align'
Plugin 'kana/vim-operator-user'
Plugin 'kana/vim-textobj-line'            " object l, il, al
Plugin 'kana/vim-textobj-user'            " requires bt vim-textobj-quotes
Plugin 'kristijanhusak/vim-carbon-now-sh'
Plugin 'leafgarland/typescript-vim'
Plugin 'lifepillar/vim-solarized8'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'machakann/vim-highlightedyank'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
Plugin 'ngmy/vim-rubocop'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'pangloss/vim-javascript'
Plugin 'qpkorr/vim-bufkill'
Plugin 'romainl/vim-qf'
Plugin 'scrooloose/nerdtree'
Plugin 'simeji/winresizer'                " To enter resizing mode : ctrl+e, and exit by enter
Plugin 'stephpy/vim-yaml'
Plugin 'szw/vim-maximizer'
Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-commentary'             " gc{motion}, v_gc, {number}gcc
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'                 " 'solve repeated the last native command inside that map, rather than the map as a whole'
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-surround'               " cs, ds, ys + {motion}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'wellle/targets.vim'
Plugin 'wellle/visual-split.vim'
Plugin 'zhaocai/GoldenView.Vim'

" deoplete dependencies for normal vim
if !has('nvim')
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif

" Code Linter
if has('nvim')
  Plugin 'neomake/neomake'
else
  Plugin 'w0rp/ale'
end

call vundle#end()

" *********************************************
" General Configuaraion
" *********************************************
filetype off
syntax enable
syntax on
set hidden
set number
set numberwidth=4

set backspace=indent,eol,start                            " Make backspace works like most program
set laststatus=2                                          " Show the status line all the time
set lazyredraw
set nopaste
set showcmd
set ttyfast
set visualbell                                            " Disable sound

filetype plugin indent on
set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set tabstop=2

set foldnestmax=3                                         " Folding: deepest fold is 3 levels
set nofoldenable                                          " Folding: dont fold by default

set nowrap                                                " Don't wrap lines
set linebreak                                             " Wrap lines at convenient points

set autowrite                                             " autoload write
set autoread                                              " autoload read

set noswapfile                                            " turn off swap file
set nobackup                                              " turn off backup file
set nowb

" Search
set incsearch                                             " Search: Find as you type search
set hlsearch                                              " Search: Highlight search terms
set ignorecase                                            " Search: Case-insensitive searching.
set smartcase                                             " Search: But case-sensitive if expression contains a capital letter.

" command wildmenu list
set wildmode=list:longest
set wildmenu                      " Enhanced command line completion.
set wildignore=*.o,*.obj,*~       " Stuff to ignore when tab completing

" Colorscheme
let g:solarized_degrade=256
let g:solarized_visibility="low"                          " Special characters such as trailing whitespace, tabs, empty buffer `~`
let g:solarized_statusline="normal"
set background=dark
colorscheme solarized

" Cursor shape w/wo tmux
if exists('$ITERM_PROFILE')
  if exists('$TMUX')
    let &t_SI = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[0 q"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
end

" *********************************************
" Keys mapping
" *********************************************
" Change default leader to ,
let mapleader=','

" Save file
nmap <leader>w :w!<cr>

" Clean up search hightlight
nmap <Space> :noh<CR>

" Easier navigation between split windows
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l

" Better Ruby Editing
"" Open the definition in a new split
nnoremap <c-\> <c-w>g<c-]>

"" Indenting in or out for visual selected
vmap <tab> >gv
vmap <s-tab> <gv

"" Auto-indenting the whole file
nmap <leader><tab> <esc>gg=G<C-o><C-o>zz

"" Running Rubocop with auto-correct
let g:vimrubocop_keymap = 0
map <leader>ac :RuboCop --auto-correct %<CR><leader>q

"" Converting old hash to new Ruby 1.9 syntax
map <leader>: :%s/:\(\w\+\)\(\s*=>\s*\)/\1: /gc<CR>

"" Converting ' to "
map <leader>' :%s/'\([^']*\)'/"\1"/gc<CR>

" *********************************************
" Plugin Customization
" *********************************************
if filereadable($HOME . "/.vim/custom/plugin_customizations.vim")
  source ~/.vim/custom/plugin_customizations.vim
endif

" *********************************************
" Local Vimrc Customization
" *********************************************
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
