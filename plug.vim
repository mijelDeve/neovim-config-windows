call plug#begin('~/.vim/plugged')

" NERDTree - Navegar entre archivos
Plug 'preservim/nerdtree'

"Colorscheme
Plug '0xstepit/flow.nvim'

" Vim Airline
Plug 'vim-airline/vim-airline'

" Tabs
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'romgrk/barbar.nvim'

" Icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

" Rust 
Plug 'rust-lang/rust.vim'

" Terminal
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

" Búsqueda
Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.2'}
Plug 'nvim-lua/plenary.nvim'

" Flutter
Plug 'stevearc/dressing.nvim' " optional for vim.ui.select
Plug 'akinsho/flutter-tools.nvim'

"Lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'

" Soporte para dart y flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Plugins de git
Plug 'tpope/vim-fugitive'
Plug 'sindrets/diffview.nvim'

" Formateador
Plug 'jose-elias-alvarez/null-ls.nvim'

" Laravel
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Autocompletado de llaves
Plug 'windwp/nvim-autopairs'

" Formateador para varios lenguajes
Plug 'stevearc/conform.nvim'

call plug#end()
