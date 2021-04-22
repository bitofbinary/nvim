
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use {'christianchiarulli/nvcode-color-schemes.vim'}


  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  use {
    'neovim/nvim-lspconfig'
  }
  use {'hrsh7th/nvim-compe'}

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }


  -- Lazy loading:
  -- Load on specific commands
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- Load on an autocommand event
  use {'andymass/vim-matchup', event = 'VimEnter'}



end)


