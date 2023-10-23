return {"wbthomason/packer.nvim", {
  "svrana/neosolarized.nvim",
  dependencies = {"tjdevries/colorbuddy.nvim"}
}, "psliwka/vim-smoothie", -- 'neoclide/coc.nvim', branch = 'release'
-- CocInstall coc-tsserver coc-eslint coc-json coc-prettier coc-css coc-prettier
-- CocUninstall coc-git
-- Telescope
"nvim-treesitter/nvim-treesitter", -- File icons
"kyazdani42/nvim-web-devicons", -- Tree
"kyazdani42/nvim-tree.lua", -- GIT
"lewis6991/gitsigns.nvim", -- For git blame & browse
"dinhhuy258/git.nvim", -- Statusline
"nvim-lualine/lualine.nvim", -- Comment line
"terrortylor/nvim-comment", -- Autopairs
{
  "windwp/nvim-autopairs",
  config = function()
    require("nvim-autopairs").setup({})
  end
}, "windwp/nvim-ts-autotag", -- LSP
-- 'jose-elias-alvarez/null-ls.nvim',
"folke/zen-mode.nvim", -- terminal
{
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup(
    {
      active = true,
      on_config_done = nil,
      size = 20,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true, 
      persist_size = false,
      persist_mode = true,
      direction = 'float',
      close_on_exit = true,
      shell = vim.o.shell,
      auto_scroll = true,
      float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
      -- winbar = {
        --   enabled = false,
        --   name_formatter = function(term) --  term: Terminal
          --     return term.name
          --   end
          -- },
        }

        )

      end
    }, "folke/zen-mode.nvim", {
      "folke/tokyonight.nvim",
      -- lazy = true,
      opts = {
        style = "moon"
      }
    }}
