local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  -- colorschemes
  use 'osmangokmenx/onedark.vim'
  use 'osmangokmenx/github-nvim-theme'
  -- Wakatime
  use 'wakatime/vim-wakatime'
  -- LSP
  -- use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'L3MON4D3/LuaSnip'

  use {
  'neoclide/coc.nvim', 
   run = 'yarn install'
  } -- Syntax
  -- CocInstall coc-tsserver coc-eslint coc-json coc-prettier coc-css coc-prettier
  -- CocUninstall coc-git
  

  -- Telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use("ahmedkhalf/project.nvim")
   use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
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

  use {
      'goolord/alpha-nvim',
      requires = { 'kyazdani42/nvim-web-devicons' },
      config = function ()
          require'alpha'.setup(require'alpha.themes.startify'.config)
      end
  }
  use 'karb94/neoscroll.nvim'

end)


