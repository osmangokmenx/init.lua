local status, github = pcall(require, "github-theme")
if (not status) then return end
github.setup()

vim.cmd[[colorscheme onedark]] -- github_dark_default]]
-- vim.cmd[[hi NonText ctermfg=bg guifg=bg]]
