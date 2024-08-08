" NERDTree
nnoremap <silent> <F2> :NERDTreeFind <CR>
nnoremap <silent> <F3> :NERDTreeToggle <CR>

" Barbar
nnoremap <silent> <Tab> :BufferNext <CR>
nnoremap <silent> <S-Tab> :BufferPrevious <CR>

" Búsqueda
nnoremap <F6> :Telescope find_files<CR>
nnoremap <F4> :Telescope live_grep<CR>

"Formateo
nnoremap <F9> :lua vim.lsp.buf.format({ async = false })<CR>

" Laravel
" Mapea `Tab` para aceptar la sugerencia actual
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"

" Mapea `Shift-Tab` para retroceder al completado anterior (opcional)
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"
