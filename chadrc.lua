---@type ChadrcConfig
local M = {}

-- NOTE: uncomment for auto open nvimtree
-- local function open_nvim_tree()
--     require("nvim-tree.api").tree.open()
-- end
-- vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })


-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "vscode_dark",
  theme_toggle = { "vscode_dark", "github_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    theme = "minimal",
    separator_style = "round",
  },

  nvdash = {
    load_on_startup = true,
    header = {
      "                                          ",
      "                                          ",
      "             █████       ███              ",
      "            ░░███       ░░░               ",
      "             ░███████   ████              ",
      "             ░███░░███ ░░███              ",
      "             ░███ ░███  ░███              ",
      "             ░███ ░███  ░███              ",
      "             ████ █████ █████  ██         ",
      "            ░░░░ ░░░░░ ░░░░░  ░░          ",
      "                                          ",
      "                 whats up?                ",
      "                                          ",
    },

    buttons = {
      { "  Find File", "<leader> f f", "Telescope find_files" },
      { "  Recent Files", "<leader> f o", "Telescope oldfiles" },
      { "  Find Word", "<leader> f w", "Telescope live_grep" },
      { "  Themes", "<leader> t h", "Telescope themes" },
      { "  Mappings", "<leader> c h", "NvCheatsheet" },
      { "⚙ Settings (quick access) ", "<leader> f ,", "Telescope find_files search_dirs={\"$XDG_CONFIG_HOME/nvim\"} theme=ivy file_ignore_paterns={\".git\"} no_ignore=true <CR>" },
    },
  },
  cheatsheet = {theme = "simple"},

}

M.plugins = "custom.plugins"

-- custom global vim config
vim.g.mapleader = "\\"
vim.opt.relativenumber = true
vim.o.termguicolors = true

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

-- nvdash (dashboard)
return M
