
lua << EOF
-- Plugin para la terminal
require("toggleterm").setup{
    size = 20,
    open_mapping = [[<F5>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = '1',
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,
    persist_size = true,
    direction = 'horizontal', -- 'vertical' | 'horizontal' | 'tab' | 'float'
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
        border = 'curved',
        winblend = 3,
        highlights = {
            border = "Normal",
            background = "Normal",
        },
    },
}
EOF

lua << EOF
-- Plugin para la búsqueda
require('telescope').setup{
    defaults = {
        file_ignore_patterns = { "node_modules", ".git" }, -- Ignora directorios comunes
    }
}
EOF


lua << EOF
-- FLutter
  require("flutter-tools").setup {} -- use defaults
  require("telescope").load_extension("flutter")
EOF



lua << EOF
-- Lsp es para la sintaxis
local cmp = require('cmp')
local lspconfig = require('lspconfig')
local luasnip = require('luasnip')

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
})

-- LSP settings for dart
lspconfig.dartls.setup{}

-- LSP settings for tsserver (JavaScript/TypeScript)
lspconfig.tsserver.setup{}
EOF


"Formateador de flutter y dart"
command! -nargs=0 DartFormat :!dart format %

function! FormatDartFile()
    let file = expand('%')
    execute '!dart format ' . file
endfunction

augroup DartFormatOnSave
    autocmd!
    autocmd BufWritePre *.dart :call FormatDartFile()
augroup END

"Configuración para los plugins de git" 
lua << EOF
require('diffview').setup()
EOF

" Formateador
" Configuración de nvim-lspconfig y null-ls en Lua
lua << EOF
local null_ls = require('null-ls')

-- Configuración de null-ls
null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier,    -- JavaScript, TypeScript, JSON
    null_ls.builtins.formatting.black,       -- Python
    null_ls.builtins.formatting.clang_format, -- C, C++
    null_ls.builtins.formatting.stylua,      -- Lua
    null_ls.builtins.formatting.rustfmt,     -- Rust
    -- Agrega más formateadores según tus necesidades
  },
})
EOF

