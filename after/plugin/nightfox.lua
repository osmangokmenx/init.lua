local status = pcall(require, "nightfox")
if (not status) then return end

vim.cmd("colorscheme nightfox")
vim.cmd('highlight Normal ctermbg=none guibg=none')
vim.cmd('highlight NonText ctermbg=none guibg=none')
vim.cmd('highlight SignColumn ctermbg=none guibg=none')
