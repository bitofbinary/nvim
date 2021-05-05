vim.cmd('set t_Co=256')
vim.cmd('set termguicolors')
vim.cmd('hi Comment cterm=italic')
vim.cmd('let $NVIM_TUI_ENABLE_TRUE_COLOR = 1')
-- vim.cmd('let g:material_theme_style = "darker"')
-- vim.cmd('let g:material_theme_style = "darker"')
vim.cmd('colorscheme edge')


-- vim.g.tokyonight_style = "night"
-- vim.cmd('colorscheme tokyonight')
--
-- vim.cmd('colorscheme onedark')

require('lualine').setup {
    options = {
        theme = 'tokyonight',
        icons_enabled = true
    },
    sections = {
        lualine_a = {{
            'mode',
            upper = true
        }},
        lualine_b = {{
            'branch',
            icon = ''
        }},
        lualine_c = {{
            'filename',
            file_status = true
        }, {
            'diagnostics',
            sources = {'nvim_lsp'}
        }},
        lualine_x = {'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    }
}

--[[ require'bufferline'.setup {
    options = {
        view = "default",
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 18,
        max_prefix_length = 15, -- prefix used when a buffer is deduplicated
        tab_size = 18,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        -- can also be a table containing 2 custom separators
        -- [focused and unfocused]. eg: { '|', '|' }
        separator_style = "thick",
        always_show_bufferline = true,
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end
    }
} ]]

