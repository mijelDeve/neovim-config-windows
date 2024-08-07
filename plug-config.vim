
lua << EOF
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
require('telescope').setup{
    defaults = {
        file_ignore_patterns = { "node_modules", ".git" }, -- Ignora directorios comunes
    }
}
EOF



