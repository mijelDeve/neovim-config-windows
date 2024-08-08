
set number
set relativenumber
set ruler
set cursorline
set hidden
set updatetime=300
set clipboard=unnamed
set showcmd
set encoding=utf-8

syntax on

" Imports
runtime ./plug.vim
runtime ./plug-config.vim
runtime ./keybindings.vim

" ColorScheme
colorscheme flow

" Laravel config
let g:coc_global_extensions = ['coc-phpls', 'coc-snippets']
