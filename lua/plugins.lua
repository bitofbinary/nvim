return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {'kyazdani42/nvim-web-devicons'}
    use {'hoob3rt/lualine.nvim'}
    use {'miyakogi/conoline.vim'}
    use {'christianchiarulli/nvcode-color-schemes.vim'}
    use {'sainnhe/edge'}
    use {
        'kaicataldo/material.vim',
        branch = 'main'
    }
    use 'folke/tokyonight.nvim'
        use 'RRethy/nvim-base16'


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

    use {'voldikss/vim-floaterm'}

    use {'sbdchd/neoformat'}

    use {'jiangmiao/auto-pairs'}

    use {'b3nj5m1n/kommentary'  }

         use {
          "folke/lsp-trouble.nvim",
          requires = "kyazdani42/nvim-web-devicons",
          config = function()
            require("trouble").setup {
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
            }
          end
        } 

end)

