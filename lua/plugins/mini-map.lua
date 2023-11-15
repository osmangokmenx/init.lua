return { 
  'echasnovski/mini.nvim',
  version = '*',
  keys = {
    "<Leader>mt"
  },
  config=function()
    require('mini.map').setup({
      scroll_line = '█',
      scroll_view = '┃',
    })

    vim.keymap.set('n', '<Leader>mt', MiniMap.toggle)
  end }
