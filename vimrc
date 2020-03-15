set nocompatible                                                                                " be iMproved, required
filetype on                                                                                     " detect type of file
syntax on                                                                                       " turn syntax highlighting on by default

" Run :PluginInstall inside vim to install all the plugins
set rtp+=~/.vim/bundle/Vundle.vim                                                               " set the runtime path to include Vundle and initialize
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'                                                                   " let Vundle manage Vundle, required
Plugin 'tpope/vim-fugitive'                                                                     " git support in vim
Plugin 'Yggdroot/indentLine'                                                                    " display the indention levels with thin vertical lines
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'udalov/kotlin-vim'                                                                      " syntax highlighting for kotlin
Plugin 'joshdick/onedark.vim'
Plugin 'itchyny/lightline.vim'
call vundle#end()                                                                               " all the plugins must be added before the following line
colorscheme onedark

"" Plugin Configuration
" Configure StatusLine; Especially adding the branch name
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
" Configure Fzf preview window
let g:fzf_preview_window = ''                                                                   " use something like 'right:60%' to configure it

set wildmenu                                                                                    " visual autocomplete for command menu 
set laststatus=2                                                                                " display the statusline all the time

set clipboard=unnamedplus                                                                       " enable yanking to system clipboard

" Indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab                                                                                   " expand tabs to spaces
set list                                                                                        " make tabs (and other whitespaces) visible
set listchars=tab:›\ ,trail:·,nbsp:·,eol:¬

set backspace=indent,eol,start                                                                  " make that backspace key work the way it should

set showcmd                                                                                     " display incomplete commands
set nobackup                                                                                    " do not keep a backup file
set noshowmode                                                                                  " do not display vim's current mode again

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
let g:netrw_liststyle = 4
let g:netrw_browse_split = 4
let g:netrw_winsize = 20

" Smooth way to format json
com! ToJson %!python -m json.tool

" Smooth way to format xml
com! ToXml :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"

" Make avro files readable
com! ToAvro %!strings $argv | grep "^\{" | tail -n +2

" Mappings
" use 'Space' as a leader key
let mapleader = "\<Space>"
" to save a file in normal mode
nnoremap <silent><Leader>w :w<CR>
" to quit a file in normal mode
nnoremap <silent><Leader>q :q<CR>
" to save and quit a file in normal mode
nnoremap <silent><Leader>wq :wq<CR>
" to replace all occurrences of the word under the cursor
nnoremap <silent><Leader>s :%s/\<<C-r><C-w>\>/
" Parse stacktrace
nnoremap <silent><Leader>t :%s/\\n\\t/\r/g<CR>
" to yank in visual mode
vmap <silent><Leader>y "+y
" to delete in visual mode
vmap <silent><Leader>d "+d
" to paste in line in visual mode
vmap <silent><Leader>p "+p
" to paste before line in visual mode
vmap <silent><Leader>P "+P
" to paste in line in normal mode
nmap <silent><Leader>p "+p
" to paste before line in visual mode
nmap <silent><Leader>P "+P
" move selected text up
vnoremap <silent>J :m '>+1<CR>gv=gv
" move selected text down
vnoremap <silent>K :m '<-2<CR>gv=gv
" make . to work with visually selected lines
vnoremap <silent>. :normal.<CR>
" moving in split windows
nnoremap <silent><C-H> <C-W><C-H>
nnoremap <silent><C-J> <C-W><C-J>
nnoremap <silent><C-K> <C-W><C-K>
nnoremap <silent><C-L> <C-W><C-L>
" open a tree view 
nnoremap <silent><Leader>b :40vs +Ex<CR>

" fzf 
nnoremap <silent><Leader>F :Files<CR>
nnoremap <silent><Leader>B :Buffers<CR>
nnoremap <silent><Leader>R :Rg<CR>

