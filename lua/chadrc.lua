-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "rosepine",
  transparency = true,

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.term = {
  winopts = { number = false },
  sizes = { sp = 1, vsp = 1, ["bo sp"] = 1, ["bo vsp"] = 1 },
  float = {
    row = 0.05,
    col = 0.10,
    width = 0.8,
    height = 0.7,
    border = "single",
  },
}

M.nvdash = {
  load_on_startup = true,
}

M.ui = {
  cmp = {
    format_colors = {
      tailwind = true,
    },
  },
}

return M
