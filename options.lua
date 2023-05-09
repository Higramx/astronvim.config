local thing = {
    opt = {
        list = true,
        cpoptions = "aABceFs_I",
        listchars = "tab:  ,eol:󱞤",
        --
        shiftwidth = 4,     -- Number of space inserted for indentation
        sidescrolloff = 16, -- Number of columns to keep at the sides of the cursor
        hlsearch = false,
        incsearch = true,
        nu = true,
        shell = 'pwsh',
        shellcmdflag =
        "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
        shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
        shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
        shellquote = "",
        shellxquote = "",
        mmp = 50000,
    },
    g = {
        -- db_ui_disable_mappings = 1,
        netrw_browsex_viewer = "chrome",
        -- dbs = {('testo'): {'mariadb://root:test@localhost:1306'},},
    },
}
if vim.g.neovide then
    local alpha = function() return string.format("%x", math.floor(255 * (vim.g.transparency or 0.8))) end
    table.insert(thing, {
        g = {
            neovide_transparency = 0.6,
            neovide_background_color = "#0f1117" .. alpha(),
            neovide_scale_factor = 1.4,
            neovide_refresh_rate = 80,
            neovide_no_idle = true,
        },
        opt = {
            guifont = { "FiraCode NF", ":h14" },
        },
    })
end


return thing
