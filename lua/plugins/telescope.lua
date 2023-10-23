return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = {'nvim-lua/plenary.nvim', "nvim-telescope/telescope-file-browser.nvim"},
    keys = {{
        "<leader>f",
        "<cmd>Telescope find_files<cr>",
        desc = "Find file"
    }, {
        "<leader>rg",
        "<cmd>Telescope live_grep<cr>",
        desc = "Live grep"
    }, {
        "sf",
        ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
        -- "<cmd>Telescope file_browser<cr>",
        desc = "File browser"
    }, {
      ";;",
      ':Telescope resume<CR>',
      desc = "Resume"
    }
  },
    config = function()
        local status, telescope = pcall(require, "telescope")
        if (not status) then
            return
        end
        local actions = require('telescope.actions')
        local builtin = require("telescope.builtin")

        local function telescope_buffer_dir()
            return vim.fn.expand('%:p:h')
        end

        local previewers = require('telescope.previewers')

        local new_maker = function(filepath, bufnr, opts)
            opts = opts or {}

            filepath = vim.fn.expand(filepath)
            vim.loop.fs_stat(filepath, function(_, stat)
                if not stat then
                    return
                end
                if stat.size > 100000 then
                    return
                else
                    previewers.buffer_previewer_maker(filepath, bufnr, opts)
                end
            end)
        end
        telescope.load_extension("file_browser")
        local fb_actions = require"telescope".extensions.file_browser.actions

        telescope.setup {
            defaults = {
                mappings = {
                    n = {
                        ["q"] = actions.close
                    }
                },
                buffer_previewer_maker = new_maker,
                file_ignore_patterns = {"node_modules", ".git", ".DS_Store", 'vendor'}
            },
            extensions = {
                find_files = {
                    theme = "dropdown",
                    -- disables netrw and use telescope-file-browser in its place
                    hijack_netrw = true,
                    mappings = {
                        -- your custom insert mode mappings
                        ["i"] = {
                            ["<C-w>"] = function()
                                vim.cmd('normal vbd')
                            end
                        },
                        ["n"] = {
                            -- your custom normal mode mappings
                            ["N"] = fb_actions.create,
                            ["h"] = fb_actions.goto_parent_dir,
                            ["/"] = function()
                                vim.cmd('startinsert')
                            end
                        }
                    },
                    respect_gitignore = false,
                    no_ignore = false,
                    hidden = true
                },
                live_grep = {
                    file_ignore_patterns = {"node_modules", ".lock", 'vendor', ".png", ".webp", ".jpg", ".jpeg"}
                },

                file_browser = {
                    path = "%:p:h",
                    cwd = telescope_buffer_dir(),
                    respect_gitignore = false,
                    hidden = true,
                    grouped = true,
                    pfeviewer = false,
                    initial_mode = "normal",
                    layout_config = {
                        height = 40
                    }
                }
            }
        }

        -- vim.keymap.set('n', '<leader>f', function()
        --     builtin.find_files({
        --         respect_gitignore = false,
        --         no_ignore = false,
        --         hidden = true
        --     })
        -- end)

        -- vim.keymap.set('n', '<leader>rg', function()
        --     builtin.live_grep({
        --         file_ignore_patterns = {"node_modules", ".lock", 'vendor', ".png", ".webp", ".jpg", ".jpeg"}
        --     })
        -- end)

        -- vim.keymap.set('n', ';t', function()
        --     builtin.help_tags()
        -- end)
        -- vim.keymap.set('n', ';;', function()
        --     builtin.resume()
        -- end)
        -- vim.keymap.set("n", "sf", function()
        --     telescope.extensions.file_browser.file_browser({
        --         path = "%:p:h",
        --         cwd = telescope_buffer_dir(),
        --         respect_gitignore = false,
        --         hidden = true,
        --         grouped = true,
        --         pfeviewer = false,
        --         initial_mode = "normal",
        --         layout_config = {
        --             height = 40
        --         }
        --     })
        -- end)

        -- vim.keymap.set("n", "<leader>d", function()
        --     builtin.diagnostics({})
        -- end)

        -- vim.cmd "autocmd User TelescopePreviewerLoaded setlocal number"

    end
}
