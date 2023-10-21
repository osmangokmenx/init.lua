local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system(
        {
            "git",
            "clone",
            "--filter=blob:none",
            "https://github.com/folke/lazy.nvim.git",
            "--branch=stable", -- latest stable release
            lazypath
        }
    )
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    "wbthomason/packer.nvim",
    {
        "svrana/neosolarized.nvim",
        dependencies = {"tjdevries/colorbuddy.nvim"}
    },
    "psliwka/vim-smoothie",
    -- 'neoclide/coc.nvim', branch = 'release'
    -- CocInstall coc-tsserver coc-eslint coc-json coc-prettier coc-css coc-prettier
    -- CocUninstall coc-git

    -- Telescope
    {
     'nvim-telescope/telescope.nvim', tag = '0.1.4',
       dependencies = { 'nvim-lua/plenary.nvim', "nvim-telescope/telescope-file-browser.nvim"},
       keys = {
         '<leader>f',
          function()
            builtin.find_files({
              respect_gitignore = false,
              no_ignore = false,
              hidden = true
            })
          end
       }
     },
    "nvim-treesitter/nvim-treesitter",
    -- File icons
    "kyazdani42/nvim-web-devicons",
    -- Tree
    "kyazdani42/nvim-tree.lua",
    -- GIT
    "lewis6991/gitsigns.nvim",
    -- For git blame & browse
    "dinhhuy258/git.nvim",
    -- Statusline
    "nvim-lualine/lualine.nvim",
    -- Comment line
    "terrortylor/nvim-comment",
    -- Autopairs
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end
    },
    "windwp/nvim-ts-autotag",
    -- Dashboard
    {
        "goolord/alpha-nvim",
        config = function()
            require("alpha").setup(require("alpha.themes.dashboard").config)
        end
    },
    -- LSP
    -- 'jose-elias-alvarez/null-ls.nvim',

    -- LSP
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        dependencies = {
            -- LSP Support
            "neovim/nvim-lspconfig", -- Required
            "williamboman/mason.nvim", -- Optional
            "williamboman/mason-lspconfig.nvim", -- Optional
            -- Autocompletion
            "hrsh7th/nvim-cmp", -- Required
            "hrsh7th/cmp-nvim-lsp", -- Required
            "hrsh7th/cmp-buffer", -- Optional
            "hrsh7th/cmp-path", -- Optional
            "saadparwaiz1/cmp_luasnip", -- Optional
            "hrsh7th/cmp-nvim-lua", -- Optional
            -- Snippets
            "L3MON4D3/LuaSnip", -- Required
            "rafamadriz/friendly-snippets" -- Optional
        }
    },
    "folke/zen-mode.nvim",
    -- terminal
    {
        "akinsho/toggleterm.nvim",
        tag = "*",
        config = function()
            require("toggleterm").setup()
        end
    },
    "folke/zen-mode.nvim",
    {
        "folke/tokyonight.nvim",
        -- lazy = true,
        opts = {style = "moon"},
    }
}

local opts = {}

require("lazy").setup(plugins, opts)
