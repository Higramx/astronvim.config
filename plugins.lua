return {
    { "lervag/vimtex" },
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
    --[[
    {
        "petertriho/nvim-scrollbar",
        event = "VeryLazy",
        config = function()
            require("scrollbar").setup {
                handlers = {
                    cursor = true,
                    diagnostic = true,
                    gitsigns = true, -- Requires gitsigns
                    handle = true,
                    search = false, -- Requires hlslens
                },
                excluded_filetypes = {
                    "prompt",
                    "TelescopePrompt",
                    "noice",
                    "NvimTree",
                    "neo-tree",
                },
            }
        end,
    },
    --]]
    {
        "jose-elias-alvarez/null-ls.nvim",
        name = "null-ls",
        --[[ function() require("null-ls").setup {} end, ]]
    },
    { "rose-pine/neovim", name = "rose-pine" },
    {
        "LhKipp/nvim-nu",
        name = "nvim-nu",
        --[[ function() require("nu").setup {} end ]]
    },
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
