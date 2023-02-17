local status, toggleterm= pcall(require, "toggleterm")
if (not status) then return end

toggleterm.setup{
  active = true,
  on_config_done = nil,
    size = 20,
    open_mapping = [[<leader>/]],
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
