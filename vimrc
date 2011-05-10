"""""""""""""""""""""""""""""""""""""""
" This is the vimrc of Jesse O'Connor "
"""""""""""""""""""""""""""""""""""""""

" Pathogen to load other plugins (see PLUGIN section below)
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"============= Basic Settings =============
" Line numbers
set nu

" Replace tabs with spaces
set expandtab

" Tab = 4 spaces
set tabstop=4

" Auto indent spacing
set shiftwidth=4

" Syntax highlighting
syntax on

" Disable legacy vi compatability mode
set nocompatible

" Smart indenting based on filetype
filetype on
filetype plugin indent on

" Briefly show matching parenthesis/brackets
set showmatch

" visual bell rather that audable beeping
set vb t_vb=

" Show line and column number
set ruler

" Code folding
set foldmethod=indent
set foldlevel=99

" Windows Splits key reassignment
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

let mapleader = ","

"============= Plugins ============

" Task lists
map <leader>td <Plug>TaskList


" Revision History (requires VIM 7.3)
map <leader>g :GundoToggle<CR>

" Python syntax validation
let g:pyflakes_use_quickfix = 0

" Python PEP8 validation (requires pep8 executable)
let g:pep8_map='<leader>8'

" Tab completion and Documentation
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview




