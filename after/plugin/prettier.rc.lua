local status, prettier = pcall(require, "prettier")
if (not status) then return end
-- local prettier = require("prettier")
prettier.setup {
  bin = 'prettier',
  filetypes = {
    "html",
    "css",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "scss",
    "less"
  },
}
