---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- harpoon (kdawg)
    ["<leader>a"] = { ":lua require(\"harpoon.mark\").add_file()<CR>", "harpoon.mark", opts = { silent = true } },
    ["<C-e>"] = { ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>", "harpoon.ui", opts = { silent = true } },
    ["<leader>tc"] = { ":lua require(\"harpoon.cmd-ui\").toggle_quick_menu()<CR>", "harpoon.cmd-ui", opts = { silent = true } },
    ["<Space>j"] = { ":lua require(\"harpoon.ui\").nav_file(1)<CR>", "harpoon: 1 mark", opts = { silent = true } },
    ["<Space>l"] = { ":lua require(\"harpoon.ui\").nav_file(3)<CR>", "harpoon: 2 mark", opts = { silent = true } },
    ["<Space>;"] = { ":lua require(\"harpoon.ui\").nav_file(4)<CR>", "harpoon: 3 mark", opts = { silent = true } },
    ["<Space>tj"] = { ":lua require(\"harpoon.term\").gotoTerminal(1)<CR>", "harpoon: terminal 1", opts = { silent = true } },
    ["<Space>tk"] = { ":lua require(\"harpoon.term\").gotoTerminal(2)<CR>", "harpoon: terminal 2", opts = { silent = true } },
    ["<Space>tl"] = { ":lua require(\"harpoon.term\").sendCommand(1, 1)<CR>", "harpoon: terminal 1 cmd", opts = { silent = true } },
    ["<Space>t;"] = { ":lua require(\"harpoon.term\").sendCommand(1, 2)<CR>", "harpoon: terminal 2 cmd", opts = { silent = true } },

    -- custom telescope
    ["<leader>ff"] = { "<cmd> Telescope find_files hidden=true <CR>", "find files" },

    ["<leader>,"] = { "<cmd>Telescope find_files search_dirs={\"$XDG_CONFIG_HOME/nvim\"} theme=ivy file_ignore_paterns={\".git\"} no_ignore=true <CR>", "live grep settings" },
    ["<leader>fd"] = { "<cmd>Telescope find_files search_dirs={\"$XDG_CONFIG_HOME/dotfiles\"} theme=ivy file_ignore_paterns={\".git\"} no_ignore=true <CR>", "live grep dotfiles" },
  },
}

-- more keybinds!

return M
