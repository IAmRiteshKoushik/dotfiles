-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "gruvbox",
  transparency = true,
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.nvdash = { load_on_startup = false }
M.ui = {
  statusline = {
    enabled = true,
    separator_style = "block",
    theme = "minimal",
  },
  tabufline = {
    lazyload = false,
  },
}

M.term = {
  sizes = {
    sp = 0.3,
    vsp = 0.5,
  },
  float = {
    relative = "editor",
    row = 0.075,
    col = 0.075,
    width = 0.85,
    height = 0.85,
    border = "double",
  },
}

return M
