" --------------------
" Default Vim Settings
" --------------------
" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

" Make .vimrc not Vi compatible
set nocompatible

if has("vms")
  set nobackup	            " do not keep a backup file, use versions instead
else
  set backup		        " keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	        " keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  set hlsearch              " Switch on highlighting the last used search pattern.
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!
augroup END

" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

" mapleader
let mapleader = ","

set encoding=utf8           " UTF-8 encoding

" --------------------
" Plugins
" --------------------
filetype plugin on

" automatically downloads vim-plug to your machine if not found.
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
                            " Specify a directory for plugins

" Vimtex
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_mode=0
let g:tex_no_error=1
let g:vimtex_view_forward_search_on_start=0


" UltiSnips
Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit = 'vertical'


" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='transparent'

" everforest
Plug 'sainnhe/everforest'

call plug#end()             " Initialize plugin system


" --------------------
" Airline
" --------------------
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename
let g:airline_theme = 'everforest'


" --------------------
" Colorscheme
" --------------------
set background=dark
let g:everforest_better_performance = 1
colorscheme everforest


" --------------------
" Buffer Management
" --------------------
set hidden " Allow buffers to be hidden if you've modified a buffer

" Move to the previous buffer
" option + n
nmap ˜ :bprevious<CR>

" Move to the next buffer
" option + m
nmap µ :bnext<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
" option + q
nmap œ :bp <BAR> bd #<CR>

" Show all open buffers and their status
" option + b
nmap ∫ :ls<CR>

" Use arrow keys to navigate window splits
" option + h|j|k|l
nnoremap ˙ :wincmd h <CR>
nnoremap ∆ :wincmd j <CR>
nnoremap ˚ :wincmd k <CR>
nnoremap ¬ :wincmd l <CR>


" --------------------
" Spaces and Tabs
" --------------------
filetype plugin indent on   " automatic filetype indenting
syntax on                   " enable syntax processing
set tabstop=4               " number of visual spaces per TAB
set softtabstop=4           " number of spaces in tab when editing
set expandtab               " tabs are spaces
set shiftwidth=4            " indent is a single tab (4 spaces)
autocmd FileType make setlocal noexpandtab
                            " no tab replacement in Makefiles
set autoindent              " auto-indenting


" --------------------
" UI Configuration
" --------------------
set number                  " show line numbers
set cursorline              " highlight current line
filetype indent on          " load filetype-specific indent files
set showmatch               " highlight matching [{()}]
set wrap linebreak nolist   " wrap text
set textwidth=0
set scrolloff=0
set mouse=


" --------------------
" Searching
" --------------------
set incsearch               " search as characters are entered
set hlsearch                " highlight matches
command C let @/=""


" --------------------
" Spellcheck
" --------------------

autocmd FileType text setlocal spell spelllang=en_us
                            " spellcheck text files
autocmd FileType help setlocal nospell
                            " no spellcheck Vim help files

" --------------------
" Misc
" --------------------

set viminfo='100,<1000,s100,h

" --------------------
" Keeping directory clean
" --------------------

set backupdir^=~/.vim/.backup//
set dir^=~/.vim/.backup//
set undodir^=~/.vim/.backup//
