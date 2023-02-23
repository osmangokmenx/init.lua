local keymap = vim.keymap

vim.g.mapleader = " "
-- vim.g.mapleader = '\\'
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select all
-- keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w>3<')
keymap.set('n', '<C-w><right>', '<C-w>3>')
keymap.set('n', '<C-w><up>', '<C-w>3+')
keymap.set('n', '<C-w><down>', '<C-w>3-')


-- Tree
keymap.set('n', '<leader>o', ':NvimTreeToggle<Return><C-v>w:NvimTreeFocus<Return><C-w>w')


-- Other
keymap.set('n', '<silent><esc> <esc>', ':noh<CR><esc>')

keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

keymap.set("x", "<leader>p", [["_dP]])

keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
vim.cmd('noremap <silent><esc> <esc>:noh<CR><esc>')

