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

    -- custom telescope overwrites
    ["<leader>ff"] = { "<cmd> Telescope find_files hidden=true no_ignore=true <CR>", "find files" },
    ["<leader>fw"] = { "<cmd>:lua require('telescope.builtin').grep_string{shorten_path=true, word_match='-w', only_sort_text=true, search=''}<CR>", "live grep" },

    ["<leader>,"] = { "<cmd>Telescope find_files search_dirs={\"$XDG_CONFIG_HOME/nvim\"} theme=ivy file_ignore_paterns={\".git\"} no_ignore=true <CR>", "live grep settings" },
    ["<leader>dot"] = { "<cmd>Telescope find_files search_dirs={\"$XDG_CONFIG_HOME/dotfiles\"} theme=ivy file_ignore_paterns={\".git\"} no_ignore=true <CR>", "live grep dotfiles" },

    -- custom naviagtion
    ["<leader><Space>"] = { "<ESC><cmd>lua require('Comment.api').toggle.linewise.current()<CR>", "toggle comment"},
    ["<leader>fcf"] = { "<cmd> Telescope live_grep search_dirs={'%:p'} theme=cursor<CR>", "grep current file"},
    ["<Space>x"] = { "<ESC><cmd>bd<CR>", "close file"},
    ["<Space>X"] = { "<ESC><cmd>e#<CR>", "restore closed file"},
    ["<Space>Q"] = { "<ESC><cmd>qa<CR>", "quit nvim"},
  },
}

-- more keybinds!

return M
