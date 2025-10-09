

set number
set relativenumber
set ruler
set cursorline
set hidden
set updatetime=300
set clipboard=unnamed
set showcmd
set encoding=utf-8
set tabstop=2       " Número de espacios que equivale a un tab
set shiftwidth=2    " Número de espacios utilizados para (de)indentar
set expandtab       " Convierte tabs en espacios

syntax on

" Imports
runtime ./plug.vim
runtime ./plug-config.vim
runtime ./keybindings.vim

" ColorScheme
colorscheme gruvbox

" Laravel config
let g:coc_global_extensions = ['coc-phpls', 'coc-snippets']


lua << EOF
require("gruvbox").setup({
  contrast = "hard",  -- "soft", "medium", "hard"
})
EOF

colorscheme gruvbox


