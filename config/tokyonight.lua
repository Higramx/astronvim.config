return function()
    require("tokyonight").setup {
        style = "moon",
        transparent = true,
        -- show_end_of_buffer = false,
        on_highlights = function(hl, c)
            --     -- hl.Visual = { bg = "" }
            --     --hl.Function = { fg = colors.peach },
            --     --hl.dentifier = { fg = colors.blue },
            --     -- hl.MatchParen = { fg = "" }
            --     -- hl.Comment = { fg = "" }
            hl.NormalFloat = { bg = "none" }
            hl.Normal = { bg = "none" }
            hl.NormalNC = { bg = "none" }
            hl.FloatBorder = { bg = "none" }
            hl.WinSeparator = { bg = "none" }
            -- hl.CursorLineNr = { style = { "bold" } }
            --     -- hl.LineNr = { fg = "" }
            hl.BufferLineFill = { bg = "none" }
            hl.BufferLineBackground = { bg = "none" }
            hl.Pmenu = { bg = "none" }
            hl.PmenuSel = { bg = "none" }
            hl.TelescopeSelection = { bg = "none" }
            -- hl.TelescopePromptCounter = { style = { "bold" } }
            hl.TelescopePromptPrefix = { bg = "none" }
            hl.TelescopePromptNormal = { bg = "none" }
            hl.TelescopeResultsNormal = { bg = "none" }
            hl.TelescopePreviewNormal = { bg = "none" }
            hl.TelescopePromptBorder = { bg = "none" }
            hl.TelescopeResultsBorder = { bg = "none" }
            hl.TelescopePreviewBorder = { bg = "none" }
            hl.NeoTreeNormal = { bg = "none" }
            hl.NeoTreeNormalNC = { bg = "none" }
            -- hl.TelescopePromptTitle = { fg = "", bg = "none" }
            -- hl.TelescopeResultsTitle = { fg = "", bg = "" }
            -- hl.TelescopePreviewTitle = { fg = "", bg = "" }
            --     -- hl.IndentBlanklineChar = { fg = "" }
            --     -- hl.IndentBlanklineContextChar = { fg = "" }
            --     -- hl.GitSignsChange = { fg = "" }
            hl.NvimTreeIndentMarker = { link = "IndentBlanklineChar" }
            --     -- hl.NvimTreeExecFile = { fg = "" }
            hl.NotifyBackground = { bg = "#000000" }
        end,
    }
    vim.api.nvim_command "colorscheme tokyonight"
end
