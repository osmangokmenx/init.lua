vim.cmd("autocmd!")

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.background = 'dark' -- required
vim.opt.termguicolors = true -- required 


vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.undofile = true -- Undo
vim.opt.undodir = '/tmp'
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'fish'
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = true -- No Wrap lines
-- vim.opt.mouse= "a" -- mouse
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }
vim.cmd[[set fillchars+=vert:\|]]

vim.cmd("set signcolumn=yes");
vim.cmd("set wrap linebreak");
vim.cmd("let g:autoclose_on = 0");

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- remove 
vim.api.nvim_command([[set fillchars=eob:\ ]])


-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})





