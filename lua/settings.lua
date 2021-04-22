-- enable syntax highlighting
vim.cmd('syntax on')

-- enable line numbers
vim.cmd('set nu')
vim.cmd('set rnu')

-- Hides buffers instead of closing them
vim.cmd('set hidden')

-- === TAB/Space settings === "
-- Insert spaces when TAB is pressed.
vim.cmd('set expandtab')

-- Change number of spaces that a <Tab> counts for during editing ops
vim.cmd('set softtabstop=2')

-- Don't highlight current cursor line
vim.cmd('set nocursorline')

-- ignore case when searching
vim.cmd('set ignorecase')

-- if the search string has an upper case letter in it, the search will be case sensitive
vim.cmd('set smartcase')

-- highlight as I type
vim.cmd('set incsearch')

require'lspconfig'.tsserver.setup {}

-- compe settings
require'compe'.setup {
    enabled = true,
    autocomplete = true,
    debug = false,
    min_length = 1,
    preselect = 'enable',
    throttle_time = 80,
    source_timeout = 200,
    incomplete_delay = 400,
    max_abbr_width = 100,
    max_kind_width = 100,
    max_menu_width = 100,
    documentation = true,

    source = {
        path = true,
        buffer = true,
        calc = true,
        nvim_lsp = true,
        nvim_lua = true,
        vsnip = true
    }
}

-- compe
local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-n>"
    elseif vim.fn.call("vsnip#available", {1}) == 1 then
        return t "<Plug>(vsnip-expand-or-jump)"
    elseif check_back_space() then
        return t "<Tab>"
    else
        return vim.fn['compe#complete']()
    end
end
_G.s_tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-p>"
    elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
        return t "<Plug>(vsnip-jump-prev)"
    else
        return t "<S-Tab>"
    end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {
    expr = true
})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {
    expr = true
})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {
    expr = true
})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {
    expr = true
})

-- nvim-tree
vim.cmd('let g:nvim_tree_indent_markers=1')
