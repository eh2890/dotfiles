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

set encoding=utf8           " UTF-8 encoding

" --------------------
" Plugins
" --------------------

filetype plugin on

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

call plug#end()             " Initialize plugin system




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

" --------------------
" Searching
" --------------------

set incsearch               " search as characters are entered
set hlsearch                " highlight matches
set ignorecase              " ignore case when searching


" --------------------
" Spellcheck
" --------------------

autocmd FileType text setlocal spell spelllang=en_us
                            " spellcheck text files
autocmd FileType help setlocal nospell
                            " no spellcheck Vim help files


" --------------------
" Keeping directory clean
" --------------------

set backupdir^=~/.vim/.backup//
set dir^=~/.vim/.backup//
set undodir^=~/.vim/.backup//
