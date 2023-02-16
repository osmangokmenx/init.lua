local status = pcall(require, "lunar")
if (not status) then return end

vim.cmd([[colorscheme lunar]])
