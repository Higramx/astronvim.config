vim.api.nvim_set_hl(0, 'NotifyBackground', { bg = "#000000" })
-- require("notify").setup({
--   background_color = "#000000",
-- })

function Transparent()
  local groups = { -- table: default groups
    "Normal",
    "NormalFloat",
    "CursorLine",
    "FoldColumn",
    "TabLine",
    "TabLineFill",
    "StatusLine",
    "NormalNC",
    "Comment",
    "Constant",
    "Special",
    "Identifier",
    "Statement",
    "PreProc",
    "Type",
    "Underlined",
    "Todo",
    "String",
    "Function",
    "Conditional",
    "Repeat",
    "Operator",
    "Structure",
    "LineNr",
    "NonText",
    "SignColumn",
    "CursorLineNr",
    "EndOfBuffer",
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
  }
  -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
  for _, i in ipairs(groups) do
    vim.api.nvim_set_hl(0, i, { bg = "none" })
  end
end

require("lspconfig").kotlin_language_server.setup {}

require "nvim-treesitter.install".compilers = { 'zig' }

vim.api.nvim_create_user_command("Transparent", function() Transparent() end, { nargs = 0 })

vim.api.nvim_create_user_command("Vscode", function() vim.api.nvim_command "colorscheme vscode" end, { nargs = 0 })

vim.api.nvim_create_user_command(
  "Catppuccin",
  function() vim.api.nvim_command "colorscheme catppuccin" end,
  { nargs = 0 }
)
