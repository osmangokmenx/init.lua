return {}
-- return {
--   "stevearc/conform.nvim",
--   event = { "BufWritePre" },
--   cmd = { "ConformInfo" },
--   keys = {
--     {
--       -- Customize or remove this keymap to your liking
--       "<leader>x",
--       function()
--         require("conform").format({ async = true, lsp_fallback = true })
--       end,
--       mode = "",
--       desc = "Format buffer",
--     },
--   },
--   opts = {
--     format_on_save = { timeout_ms = 500, lsp_fallback = true },
--     formatters_by_ft = {
--       ["javascript"] = { "prettier" },
--       ["javascriptreact"] = { "prettier" },
--       ["typescript"] = { "prettier" },
--       ["typescriptreact"] = { "prettier" },
--       ["vue"] = { "prettier" },
--       ["css"] = { "prettier" },
--       ["scss"] = { "prettier" },
--       ["less"] = { "prettier" },
--       ["html"] = { "prettier" },
--       ["json"] = { "prettier" },
--       ["jsonc"] = { "prettier" },
--       ["yaml"] = { "prettier" },
--       ["markdown"] = { "prettier" },
--       ["markdown.mdx"] = { "prettier" },
--       ["graphql"] = { "prettier" },
--       ["handlebars"] = { "prettier" },
--     },
--   },
-- }
