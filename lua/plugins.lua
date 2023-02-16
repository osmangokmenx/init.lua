local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- colorschemes
  -- use 'osmangokmenx/onedark.vim'
  -- use 'osmangokmenx/github-nvim-theme'
  use 'lunarvim/lunar.nvim'
  -- Wakatime
  use 'wakatime/vim-wakatime'

  -- use {
    -- 'neoclide/coc.nvim',
    --  run = 'yarn install'
  -- } -- Syntax
  -- CocInstall coc-tsserver coc-eslint coc-json coc-prettier coc-css coc-prettier
  -- CocUninstall coc-git

  -- Telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use("ahmedkhalf/project.nvim")
  use ('nvim-treesitter/nvim-treesitter', { run = ":TSUpdate" })
  use 'kyazdani42/nvim-web-devicons' -- File icons
  -- Tree
  use 'kyazdani42/nvim-tree.lua'
  -- GIT 
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse

  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'sheerun/vim-polyglot'
  use ({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
    })
  use "terrortylor/nvim-comment"

  use 'karb94/neoscroll.nvim'
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use {
    'goolord/alpha-nvim',
    config = function ()
      require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
  }
  -- lsp
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    }
  }
end)


