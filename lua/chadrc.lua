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
  sizes = { sp = 0.95, vsp = 0.95, ["bo sp"] = 0.5, ["bo vsp"] = 0.5 },
  float = {
    row = 0.05,
    col = 0.10,
    width = 0.8,
    height = 0.7,
    border = "single",
  },
}

return M
