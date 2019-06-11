set nocompatible                                                                                " be iMproved, required
filetype on                                                                                     " detect type of file
syntax on                                                                                       " turn syntax highlighting on by default

" Run :PluginInstall inside vim  to install all the plugins
set rtp+=~/.vim/bundle/Vundle.vim                                                               " set the runtime path to include Vundle and initialize
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'                                                                   " let Vundle manage Vundle, required
Plugin 'tpope/vim-fugitive'                                                                     " git support in vim
Plugin 'flazz/vim-colorschemes'                                                                 " one stop shop for vim colorschemes
Plugin 'Yggdroot/indentLine'                                                                    " display the indention levels with thin vertical lines
Plugin 'vim-airline/vim-airline'                                                                " a lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline-themes'                                                         " fancy themes
Plugin 'ctrlp.vim'                                                                              " fuzzy finder inside of vim

call vundle#end()                                                                               " all the plugins must be added before the following line

let g:airline_powerline_fonts = 1                                                               " fancy symbols in status line 
set wildmenu                                                                                    " visual autocomplete for command menu 
set laststatus=2                                                                                " display the statusline all the time

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']   " exclude certain file types
set clipboard=unnamedplus                                                                       " enable yanking to system clipboard

" Indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab                                                                                   " expand tabs to spaces
set list                                                                                        " make tabs (and other whitespaces) visible
set listchars=tab:›\ ,trail:·,nbsp:·,eol:¬

set backspace=indent,eol,start                                                                  " make that backspace key work the way it should
set background=dark                                                                             " dark background

set showcmd                                                                                     " display incomplete commands
set nobackup                                                                                    " do not keep a backup file

" Numbers
set number                                                                                      " show line numbers
set relativenumber                                                                              " relative line numbers
set ruler                                                                                       " show the current row and column

" Search & Highlighting
set hlsearch                                                                                    " highlight searches
set incsearch                                                                                   " do incremental searching
set showmatch                                                                                   " jump to matches when entering regexp
set ignorecase                                                                                  " ignore case when searching
set smartcase                                                                                   " no ignorecase if Uppercase char present

set visualbell t_vb=                                                                            " turn off error beep/flash
set novisualbell                                                                                " turn off visual bell

" Undo
set undofile                                                                                    " enable undo files
set undodir=~/.vim/undodir                                                                      " path to the directory where the undo files are handled

" Buffers & Windows
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 20

" Smooth way to format to json
com! ToJson %!python -m json.tool

" Mappings
let mapleader = "\<Space>"                                                                      " use 'Space' as a leader key
nnoremap <Leader>w :w<CR>                                                                       " to save a file in normal mode
nnoremap <Leader>q :q<CR>                                                                       " to quit a file in normal mode
nnoremap <Leader>wq :wq<CR>                                                                     " to save and quit a file in normal mode
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
vmap <Leader>y "+y                                                                              " to yank in visual mode
vmap <Leader>d "+d                                                                              " to delete in visual mode
vmap <Leader>p "+p                                                                              " to paste in line in visual mode
vmap <Leader>P "+P                                                                              " to paste before line in visual mode
nmap <Leader>p "+p                                                                              " to paste in line in normal mode
nmap <Leader>P "+P                                                                              " to paste before line in visual mode
