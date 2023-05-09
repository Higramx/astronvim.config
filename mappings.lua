-- local utils = require "astronvim.utils"
-- local is_available = utils.is_available
-- local ui = require "astronvim.utils.ui"

local nextbuf =
{ function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" }

local prevbuf = {
    function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    desc = "Previous buffer",
}

local runterm = {
    function()
        vim.cmd.w()
        if vim.bo.filetype == "python" then
            vim.cmd.TermExec 'cmd="cd %:p:h && python %:t"'
        elseif vim.bo.filetype == "rust" then
            vim.cmd.TermExec 'cmd="cd %:p:h && rustc %:t && ./%:t:r"'
        end
    end,
    desc = "Run file",
}

-- scroll move visualmode marked items
Maps = {
    n = {
        ["<leader>x"] = { "<nop>" },
        ["<leader>z"] = { "o<Esc>" },
        ["<leader>Z"] = { "O<Esc>" },
        ["<leader>P"] = { '"_dP' },
        -- while ufo-ing, stay centered with cursor
        ["J"] = { "mzJ`z" },
        ["C-d"] = { "<C-d>zz" },
        ["C-u"] = { "<C-u>zz" },
        -- next matchword centered on screen
        ["n"] = { "nzzzv" },
        ["N"] = { "Nzzzv" },
        ["Q"] = { "<nop>" },
        ["<M-{>"] = prevbuf,
        ["<M-}>"] = nextbuf,
        ["<M-J>"] = prevbuf,
        ["<M-K>"] = nextbuf,
        ["<M-S-Left>"] = prevbuf,
        ["<M-S-Right>"] = nextbuf,
        ["<leader>tr"] = runterm,
        ["<F8>"] = runterm,
        ["<M-h>"] = { function() require("smart-splits").move_cursor_left() end, desc = "Move to left split" },
        ["<M-j>"] = { function() require("smart-splits").move_cursor_down() end, desc = "Move to below split" },
        ["<M-k>"] = { function() require("smart-splits").move_cursor_up() end, desc = "Move to above split" },
        ["<M-l>"] = { function() require("smart-splits").move_cursor_right() end, desc = "Move to right split" },
        ["<C-k>"] = { function() require("smart-splits").resize_up() end, desc = "Resize split up" },
        ["<C-j>"] = { function() require("smart-splits").resize_down() end, desc = "Resize split down" },
        ["<C-h>"] = { function() require("smart-splits").resize_left() end, desc = "Resize split left" },
        ["<C-l>"] = { function() require("smart-splits").resize_right() end, desc = "Resize split right" },
    },
    i = {
        -- ["C-z"] = { "<C-O>u" },
        -- ["C-Z"] = { "<C-O><C-R>" },
        -- ["C-V"] = { function() vim.cmd.put() end },
        ["<C-b>"] = { "<C-v>" },
        ["<C-v>"] = { "<C-o>p" },
        -- ["<C-H>"] = { "<C-o>db" },
    },
    v = {
        ["<leader>P"] = { '"_dP' },
        ["J"] = { ":m '>+1<CR>gv=gv" },
        ["K"] = { ":m '<-2<CR>gv=gv" },
    },
    x = {
        ["<leader>P"] = { '"_dP' },
        -- ["C-V"] = { function() vim.cmd.put() end },
    },
}
-- Run things in terminal


return Maps
