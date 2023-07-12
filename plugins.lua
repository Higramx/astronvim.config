return {
    { "lervag/vimtex" },
    -- {
    --     "sourcegraph/sg.nvim", -- requires fiddling or linux (mlua cargo pack at least)
    --     build = "cargo build --workspace",
    --     dependencies = { "nvim-lua/plenary.nvim" },
    -- },
    -- {
    --     "nvim-treesitter/nvim-treesitter-context",
    --     config = function()
    --         require 'treesitter-context'.setup {
    --             enable = true,            -- Enable this plugin (Can be enabled/disabled later via commands)
    --             max_lines = 0,            -- How many lines the window should span. Values <= 0 mean no limit.
    --             min_window_height = 0,    -- Minimum editor window height to enable context. Values <= 0 mean no limit.
    --             line_numbers = true,
    --             multiline_threshold = 20, -- Maximum number of lines to collapse for a single context line
    --             trim_scope = 'outer',     -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
    --             mode = 'cursor',          -- Line used to calculate context. Choices: 'cursor', 'topline'
    --             -- Separator between context and content. Should be a single character string, like '-'.
    --             -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
    --             separator = nil,
    --             zindex = 20,     -- The Z-index of the context window
    --             on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
    --         }
    --     end,
    --     cmd = {
    --         "TSContextEnable",
    --         "TSContextDisable",
    --         "TSContextToggle",
    --     }
    -- },
    -- {
    --     'lommix/godot.nvim',
    --     cmd = {
    --         'GodotDebug',
    --         'GodotBreakAtCursor',
    --         'GodotStep',
    --         'GodotQuit',
    --         'GodotContinue'
    --     },
    --     config = function()
    --         require("godot.nvim").setup({})
    --     end,
    -- },
    {
        "nvim-pack/nvim-spectre",
        config = function()
            require("spectre").setup({
                find_engine = {
                    ['rg'] = {
                        cmd = "rg",
                        args = {
                            '--color=never',
                            '--no-heading',
                            '--with-filename',
                            '--line-number',
                            '--column',
                            '-U'
                        },
                        options = {
                            ['ignore-case'] = {
                                value = "--ignore-case",
                                icon = "[I]",
                                desc = "ignore case"
                            },
                            ['hidden'] = {
                                value = "--hidden",
                                desc = "hidden file",
                                icon = "[H]"
                            },
                            -- you can put any rg search option you want here it can toggle with
                            -- show_option function
                        },
                    },
                }
            })
        end
    },
    {
        "tpope/vim-fugitive",
        cmd = {
            "Git",
            "G",
            "Gread",
            "Gwrite",
            "Gremove",
            "Gmove",
            "Gcommit",
            "Gblame",
        }
    },
    {
        "wfxr/minimap.vim",
        name = "minimap.vim",
        cmd = {
            "Minimap",
            "MinimapClose",
            "MinimapToggle",
            "MinimapRefresh",
            "MinimapUpdateHighlight",
            "MinimapRescan",
        },
    },
    {
        "ThePrimeagen/harpoon",
        name = "harpoon",
        config = function()
            require("harpoon").setup({})
        end,
    },
    {
        "nvim-neorg/neorg",
        ft = "norg",
        -- name = "neorg",
        cmd = "Neorg",
        -- build = ":Neorg sync-parsers",
        priority = 30,
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            load = {
                ["core.defaults"] = {},  -- Loads default behaviour
                ["core.concealer"] = {}, -- Adds pretty icons to your documents
                ["core.dirman"] = {      -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            notes = "/docs/notes",
                            uni = "/docs/Uni",
                        },
                    },
                },
            },

        },
    },
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({})
        end,
    },
    {
        "folke/tokyonight.nvim",
        name = "tokyonight",
        opts = {
            highlight = {
                Normal = { guibg = "none" },
                NormalNC = { guibg = "none" },
                NeotreeNormal = { guibg = "none" },
            },
        },
        config = require "user.config.tokyonight",
    },
    {
        'nyngwang/nvimgelion',
        name = "nvimgelion",
        config = require "user.config.nvimgelion",
    },
    -- "github/copilot.vim",
    {
        "daschw/leaf.nvim",
        name = "leaf-nvim",
    },
    {
        "atelierbram/vim-colors_atelier-schemes",
        name = "atelier-schemes",
    },
    {
        "tpope/vim-dadbod",
        dependencies = {
            "kristijanhusak/vim-dadbod-completion",
            "kristijanhusak/vim-dadbod-ui",
        },
        config = function()
            require("vim_dadbod").setup {
            }
        end,
        cmd = "DBUI",
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        name = "null-ls",
        --[[ function() require("null-ls").setup {} end, ]]
    },
    { "rose-pine/neovim", name = "rose-pine" },
    -- {
    --     "LhKipp/nvim-nu",
    --     name = "nvim-nu",
    --     --[[ function() require("nu").setup {} end ]]
    -- },
    {
        "Mofiqul/vscode.nvim",
        name = "vscode",
        config = function()
            require("vscode").setup {
                theme = "vscode",
                transparent_background = false,
            }
            vim.api.nvim_command "colorscheme vscode"
        end,
    },
    { "jim-fx/sudoku.nvim", cmd = "Sudoku", config = "user.config.sudoku" },
    {
        "catppuccin/nvim",
        lazy = false,
        priority = 150,
        name = "catppuccin",
        config = require "user.config.catppuccin",
    },
}
