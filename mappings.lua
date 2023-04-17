---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>f,"] = { "<cmd>Telescope find_files search_dirs={\"$XDG_CONFIG_HOME/nvim\"} theme=ivy file_ignore_paterns={\".git\"} no_ignore=true <CR>", "live grep settings" },
  },
}

-- more keybinds!

return M
