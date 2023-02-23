local status = pcall(require, "nightfox")
if (not status) then return end

vim.cmd("colorscheme nightfox")
