local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  -- ensure_installed = {"help", "javascript", "typescript", "c", "lua", "vim", "help" },
  sync_install = false,
  auto_install = true,
  autotag = {
    enable = true,
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
