" vimtex - LaTeX plugin for Vim
"
" Maintainer: Karl Yngve Lervåg
" Email:      karl.yngve@gmail.com
"

if !get(g:, 'vimtex_enabled', 1)
  finish
endif

if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

if !(!get(g:, 'vimtex_version_check', 1)
      \ || has('nvim-0.4.3')
      \ || has('patch-8.0.1453'))
  echoerr 'Error: vimtex does not support your version of Vim'
  echom 'Please update to Vim 8.0.1453 or neovim 0.4.3 or later!'
  echom 'For more info, please see :h vimtex_version_check'
  finish
endif

" fixing autoindent
filetype indent off
let g:tex_indent_items=0
let g:tex_indent_and=0
let g:tex_indent_brace=0
call vimtex#init()
