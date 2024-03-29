local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
-- [[]],
-- [[██████▒░                    ██████▒░]],
-- [[    ████▒░                ████▒░    ]],
-- [[      ████▒░            ████▒░      ]],
-- [[        ██████▒░    ██████▒░        ]],
-- [[            ██████████▒░            ]],
-- [[        ██████▓▓▓▓▓▓██████▒░        ]],
-- [[        ██▓▓▓▓▓▓▓▓▓▓▓▓▓▓██▒░        ]],
-- [[      ████▓▓▓▓▓▓▓▓▓▓▓▓▓▓████▒░      ]],
-- [[      ██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██▒░      ]],
-- [[      ████▓▓▓▓▓▓▓▓▓▓▓▓▓▓████▒░      ]],
-- [[        ██▓▓▓▓▓▓▓▓▓▓▓▓▓▓██▒░        ]],
-- [[        ██████▓▓▓▓▓▓██████▒░        ]],
-- [[            ██████████▒░            ]],
-- [[]]
    [[]],
    [[                                                                              ]],
    [[                                    ██████                                    ]],
    [[                                ████▒▒▒▒▒▒████                                ]],
    [[                              ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                              ]],
    [[                            ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                            ]],
    [[                          ██▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒                              ]],
    [[                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▓▓▓▓                          ]],
    [[                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▒▒▓▓                          ]],
    [[                        ██▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒    ██                        ]],
    [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
    [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
    [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
    [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
    [[                        ██▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒██▒▒▒▒██                        ]],
    [[                        ████  ██▒▒██  ██▒▒▒▒██  ██▒▒██                        ]],
    [[                        ██      ██      ████      ████                        ]],
    [[                                                                              ]],
    [[                                                                              ]],
    [[]],
 -- [[   ____         ____       _   _             ]],
 -- [[  |  _ \       |  _ \     | | | |            ]],
 -- [[  | |_) | ___  | |_) | ___| |_| |_ ___ _ __  ]],
 -- [[  |  _ < / _ \ |  _ < / _ \ __| __/ _ \ '__| ]],
 -- [[  | |_) |  __/ | |_) |  __/ |_| ||  __/ |    ]],
 -- [[  |____/ \___| |____/ \___|\__|\__\___|_|    ]]
                                           
}
                                           

dashboard.section.buttons.val = {
  dashboard.button("d", " " .. " File browser", ":Telescope file_browser<CR>"),
  dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
  dashboard.button("e", " " .. " New file", ":ene <BAR> startinsert <CR>"),
  -- dashboard.button("p", " " .. " Find project", ":lua require('telescope').extensions.projects.projects()<CR>"),
  dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", " " .. " Find text", ":Telescope live_grep <CR>"),
  dashboard.button("c", " " .. " Config", ":e ~/.config/nvim/init.lua <CR>"),
  dashboard.button("q", " " .. " Quit", ":qa<CR>"),
}

local function footer()
  return "Do Better"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Comment"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
