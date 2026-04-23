" --- 1. HARDTIME CONFIGURATION (The Training Rules) ---
let g:hardtime_default_on = 1
let g:hardtime_timeout = 1000      " Block repeats for 1 second
let g:hardtime_maxcount = 1        " 1 press only; no jj or kk allowed
let g:hardtime_showmsg = 1        
let g:hardtime_allow_different_key = 1 

" Disable Arrow Keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" --- 2. PLUGIN MANAGEMENT ---
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    Plug 'takac/vim-hardtime'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'vim-airline/vim-airline'
    Plug 'jiangmiao/auto-pairs'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Added: Better Python syntax highlighting
    Plug 'vim-python/python-syntax'
call plug#end()

" --- 3. SYSTEM SETTINGS ---
syntax on
set nocompatible
set relativenumber      
set number
set clipboard=unnamedplus
set expandtab
set shiftwidth=4
set tabstop=4
set ignorecase
set smartcase
set scrolloff=8
set hidden

" --- 4. PYTHON QUALITY OF LIFE ---
" Auto-install Python language server for autocompletion
let g:coc_global_extensions = ['coc-pyright']

" Enable syntax highlighting for Python
let g:python_highlight_all = 1

" THE RUNNER: Save and Run Python with Space + r
" This works specifically when you are in a .py file
autocmd FileType python nnoremap <leader>r :w<CR>:!python3 %<CR>

" --- 5. KEY BINDINGS ---
let mapleader = " "

" Faster navigation
nnoremap H ^
nnoremap L $

" Management
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>h :HardTimeToggle<CR>

" CoC Tab Completion
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"