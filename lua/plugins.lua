return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {'kyazdani42/nvim-web-devicons'}
    use {'hoob3rt/lualine.nvim'}
    use {
        'akinsho/nvim-bufferline.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use {'miyakogi/conoline.vim'}
    use {'christianchiarulli/nvcode-color-schemes.vim'}
    use {'sainnhe/edge'}

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    use {'neovim/nvim-lspconfig'}
    use {'hrsh7th/nvim-compe'}

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {'kyazdani42/nvim-tree.lua'}

    -- Lazy loading:
    -- Load on specific commands
    use {
        'tpope/vim-dispatch',
        opt = true,
        cmd = {'Dispatch', 'Make', 'Focus', 'Start'}
    }

    -- Load on an autocommand event
    use {
        'andymass/vim-matchup',
        event = 'VimEnter'
    }

end)

