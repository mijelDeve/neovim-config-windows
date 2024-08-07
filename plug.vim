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

" Rust 
Plug 'rust-lang/rust.vim'

" Terminal
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

" Búsqueda
Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.2'}
Plug 'nvim-lua/plenary.nvim'

call plug#end()
