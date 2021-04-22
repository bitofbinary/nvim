-- maps.lua
local map = vim.api.nvim_set_keymap

-- map the leader key
map('n', '<Space>', '', {
    noremap = true
})
vim.g.mapleader = ' ' -- 'vim.g' sets global variables

-- map the escape key to jk
map('i', 'jk', '<Esc>', {})

-- open config file in vsplit
map('n', '<leader>ev', ':vsplit $MYVIMRC<cr>', {
    noremap = true
})

-- reload config
map('n', '<leader>sv', ':luafile $MYVIMRC<cr>', {
    noremap = true
})

-- save buffer
map('n', '<leader>fs', ':w<cr>', {})

-- remap ctrl w
map('n', '<leader>w', '<C-w>', {})

-- telescope
map('n', '<leader>ff', ':Telescope find_files<cr>', {})
map('n', '<leader><space>', ':Telescope find_files<cr>', {})
map('n', '<leader>fg', ':Telescope live_grep<cr>', {})
map('n', '<leader>bb', ':Telescope buffers<cr>', {})
map('n', '<leader>fh', ':Telescope help_tags<cr>', {})

-- bufferline
map('n', '<leader>bn', ':BufferLineCycleNext<cr>', {})
map('n', '<leader>bp', ':BufferLineCyclePrev<cr>', {})

-- nvim-tree
map('n', '<leader>e', ':NvimTreeToggle<cr>', {})
map('n', '<leader>er', ':NvimTreeRefresh<cr> :NvimTreeFindFile<cr>', {})

-- voldikss/vim-floaterm
map('n', '<leader>t', ':FloatermNew<cr>', {})

