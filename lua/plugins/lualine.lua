return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup {
            options = {
                incons_enabled = true,
                theme = 'palenight',
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
                ignore_focus = {},
                always_divide_middle = true,
                always_show_tabline = true,
                globalstatus = true

            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'filename'},
                lualine_x = {'fileformat','filetype'},
                lualine_y = {
                    {
                        'diagnostics',
                        sources = {'nvim_lsp', 'nvim_diagnostic', 'coc'},

                        sections = { 'error', 'warn', 'info', 'hint' },

                        symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '},
                        colored = true,           -- Displays diagnostics status in color if set to true.
                        update_in_insert = false, -- Update diagnostics in insert mode.
                        always_visible = true,   -- Show diagnostics even if there are none.
                    }
                },
                lualine_z = {'datetime'}
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {'location'},
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {}
        }
    end
}
