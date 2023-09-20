local status, packer =
  pcall(
    require,
    'packer'
  )
if
  not status
then
  print(
    'Packer is not installed'
  )
  return
end

vim.cmd(
  [[packadd packer.nvim]]
)

packer.startup(
  function(
    use
  )
    -- Packer can manage itself
    use(
      'wbthomason/packer.nvim'
    )

    use {
      'svrana/neosolarized.nvim',
      requires = { 'tjdevries/colorbuddy.nvim' }
    }

    use('psliwka/vim-smoothie')

    use {'neoclide/coc.nvim', branch = 'release'}
    -- CocInstall coc-tsserver coc-eslint coc-json coc-prettier coc-css coc-prettier
    -- CocUninstall coc-git

    -- Telescope
    use(
      'nvim-lua/plenary.nvim'
    )
    use(
      'nvim-telescope/telescope.nvim'
    )
    use(
      'nvim-telescope/telescope-file-browser.nvim'
    )


    use(
      'ahmedkhalf/project.nvim'
    )

    use(
      'nvim-treesitter/nvim-treesitter',
      {
        run = ':TSUpdate',
      }
    )
    -- File icons
    use(
      'kyazdani42/nvim-web-devicons'
    ) 
    -- Tree
    use(
      'kyazdani42/nvim-tree.lua'
    )
    -- GIT
    use(
      'lewis6991/gitsigns.nvim'
    )
    -- For git blame & browse
    use(
      'dinhhuy258/git.nvim'
    ) 
    -- Statusline
    use(
      'nvim-lualine/lualine.nvim'
    ) 
    -- Comment line
    use(
      'terrortylor/nvim-comment'
    )
    -- Autopairs
    use({
      'windwp/nvim-autopairs',
      config = function(
      )
        require(
          'nvim-autopairs'
        ).setup({})
      end,
    })
    use { 'windwp/nvim-ts-autotag' }
    -- Dashboard
    use({
      'goolord/alpha-nvim',
      config = function(
      )
        require(
          'alpha'
        ).setup(
          require(
            'alpha.themes.dashboard'
          ).config
        )
      end,
    })
    -- LSP
    use(
      'jose-elias-alvarez/null-ls.nvim'
    )
    -- lsp
    use({
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      requires = {
        -- LSP Support
        {
          'neovim/nvim-lspconfig',
        }, -- Required
        {
          'williamboman/mason.nvim',
        }, -- Optional
        {
          'williamboman/mason-lspconfig.nvim',
        }, -- Optional

        -- Autocompletion
        {
          'hrsh7th/nvim-cmp',
        }, -- Required
        {
          'hrsh7th/cmp-nvim-lsp',
        }, -- Required
        {
          'hrsh7th/cmp-buffer',
        }, -- Optional
        {
          'hrsh7th/cmp-path',
        }, -- Optional
        {
          'saadparwaiz1/cmp_luasnip',
        }, -- Optional
        {
          'hrsh7th/cmp-nvim-lua',
        }, -- Optional

        -- Snippets
        {
          'L3MON4D3/LuaSnip',
        }, -- Required
        {
          'rafamadriz/friendly-snippets',
        }, -- Optional
      },
    })

    use {
      "folke/zen-mode.nvim",
      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    }

    -- terminal

    use({
      'akinsho/toggleterm.nvim',
      tag = '*',
      config = function(
      )
        require(
          'toggleterm'
        ).setup()
      end,
    })

    -- colorschemes
    -- use 'osmangokmenx/onedark.vim'
    -- use 'osmangokmenx/github-nvim-theme'
    -- use(
    --   'lunarvim/lunar.nvim'
    -- )
    -- use(
    --   'EdenEast/nightfox.nvim'
    -- ) -- Packer
    -- Wakatime
    -- use(
    --   'wakatime/vim-wakatime'
    -- )
    -- use({
    --   'mhartington/formatter.nvim',
    -- })
    -- use({
    --   'Exafunction/codeium.vim',
    --   config = function(
    --   )
    --     -- Change '<C-g>' here to any keycode you like.
    --     vim.keymap.set(
    --       'i',
    --       '<C-g>',
    --       function(
    --       )
    --         return vim.fn['codeium#Accept']()
    --       end,
    --       {
    --         expr = true,
    --       }
    --     )
    --     vim.keymap.set(
    --       'i',
    --       '<c-;>',
    --       function(
    --       )
    --         return vim.fn['codeium#CycleCompletions'](
    --           1
    --         )
    --       end,
    --       {
    --         expr = true,
    --       }
    --     )
    --     vim.keymap.set(
    --       'i',
    --       '<c-,>',
    --       function(
    --       )
    --         return vim.fn['codeium#CycleCompletions'](
    --           -1
    --         )
    --       end,
    --       {
    --         expr = true,
    --       }
    --     )
    --     vim.keymap.set(
    --       'i',
    --       '<c-x>',
    --       function(
    --       )
    --         return vim.fn['codeium#Clear']()
    --       end,
    --       {
    --         expr = true,
    --       }
    --     )
    --   end,
    -- })
  end
)
