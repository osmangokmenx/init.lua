
local plugin = "harpoon"

return {

  "ThePrimeagen/harpoon",
  enabled = "true",

  -- ----------------------------------------------------------------------- }}}
  -- {{{ Define events to load Harpoon.

  keys = {
    "<C-a>",
    "<C-e>",
    "<C-h>",
    "<C-t>",
    "<C-n>",
    "<C-s>",
  },

  -- ----------------------------------------------------------------------- }}}
  -- {{{ Use Harpoon defaults or my customizations.

  opts = function(_, opts)
      opts.global_settings = {
        save_on_toggle = false,
        save_on_change = true,
        enter_on_sendcmd = false,
        tmux_autoclose_windows = false,
        excluded_filetypes = { plugin, "alpha", "dashboard", "gitcommit" },
        mark_branch = false,
      }
  end,

  -- ----------------------------------------------------------------------- }}}
  -- {{{ Configure harpoon.

  config = function(_, opts)
    require(plugin).setup(opts)
    local mark = require(plugin .. ".mark")
    local ui = require(plugin .. ".ui")

    vim.keymap.set("n", "<C-a>", mark.add_file)
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

    vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
    vim.keymap.set("n", "<C-n>", function() ui.nav_file(2) end)
    vim.keymap.set("n", "<C-s>", function() ui.nav_file(3) end)
    -- vim.keymap.set("n", "<C->", function() ui.nav_file(4) end)

    -- -- Harpoon next and previous.
    -- vim.keymap.set("n", "<C-n>", function() ui.nav_next() end)
    -- vim.keymap.set("n", "<C-p>", function() ui.nav_prev() end)

  end,

  -- ----------------------------------------------------------------------- }}}
}
