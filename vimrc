set nocompatible " be iMproved, required
filetype on             " detect type of file
filetype indent on      " load indent file for specific file type
syntax on               " turn syntax highlighting on by default

set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required

Plugin 'tpope/vim-fugitive' " git support in vim

Plugin 'flazz/vim-colorschemes' " one stop shop for vim colorschemes

Plugin 'Yggdroot/indentLine' " A vim plugin to display the indention levels with thin vertical lines

Plugin 'vim-airline/vim-airline' " A lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline-themes'

Plugin 'mhinz/vim-startify' " The fancy start screen for Vim 

Plugin 'tpope/vim-fireplace' " Connector to clojure

Plugin 'ctrlp.vim' " fuzzy finder inside of vim

call vundle#end()            " All of your Plugins must be added before the following line
filetype plugin indent on    

set relativenumber " Relative line numbers
set wildmenu " visual autocomplete for command menu 
set laststatus=2 " display the statusline all the time

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'] " exclude certain file types
set clipboard=unnamedplus "enable yanking to system clipboard

" sets the vim-airline theme
" let g:airline_theme='solarized' 

" sets the vim-airline theme
" let g:airline_solarized_bg='dark'

set scrolloff=3         " keep 3 lines when scrolling
set ai                  " set auto-indenting on for programming
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" colorscheme solarized
set background=dark
" set termguicolors

set showcmd             " display incomplete commands
set nobackup            " do not keep a backup file
set number              " show line numbers
set ruler               " show the current row and column

set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present

set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell
set undofile
set undodir=~/.vim/undodir

let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
set backspace=indent,eol,start  " make that backspace key work the way it should

set t_RV=               " http://bugs.debian.org/608242, http://groups.google.com/group/vim_dev/browse_thread/thread/9770ea844cec3282
com! ToJson %!python -m json.tool

let g:airline_powerline_fonts = 1
