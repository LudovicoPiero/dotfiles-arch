---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.copilot = {
  i = {
    ["<C-j>"] = { "<cmd>Copilot panel<CR>", "copilot panel", opts = { nowait = true } },
  },
}

-- more keybinds!

return M
