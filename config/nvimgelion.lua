return function()
    require("nvimgelion").setup { transparent_background = true,
    }
    vim.api.nvim_command "colorscheme nvimgelion"
end
