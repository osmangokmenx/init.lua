require('gitsigns').setup {
  current_line_blame = true,
  current_line_blame_opts = {
    delay = 400,
  },
}


-- Keymap
vim.cmd[[nmap <silent><leader>p :Gitsigns preview_hunk<Return>]]
