local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  -- colorschemes
  use 'chriskempson/base16-vim'
  use 'osmangokmenx/onedark.vim'
  use 'sickill/vim-monokai'
  use 'folke/tokyonight.nvim'
  use 'jaredgorski/spacecamp'
  -- LSP
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP


  use 'neoclide/coc.nvim' -- Syntax
  -- CocInstall coc-tsserver coc-eslint coc-json coc-prettier coc-css coc-prettier
  -- CocUninstall coc-git
  --

  -- Telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'kyazdani42/nvim-web-devicons' -- File icons
  -- Tree
  use 'kyazdani42/nvim-tree.lua'
  -- GIT 
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse

  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'sheerun/vim-polyglot'
  -- use 'MunifTanjim/prettier.nvim' 
  use 'glepnir/lspsaga.nvim' -- LSP UIs

end)
