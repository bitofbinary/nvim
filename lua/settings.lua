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

-- compe settings
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
  };
}

