---@type ChadrcConfig
local M = {}


-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "gatekeeper",
  theme_toggle = { "gatekeeper", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    theme = "minimal",
    separator_style = "round",
  },

  nvdash = {
    load_on_startup = true,
    header = {
      "                          ",
      "                          ",
      "     █████       ███      ",
      "    ░░███       ░░░       ",
      "     ░███████   ████      ",
      "     ░███░░███ ░░███      ",
      "     ░███ ░███  ░███      ",
      "     ░███ ░███  ░███      ",
      "     ████ █████ █████     ",
      "    ░░░░ ░░░░░ ░░░░░      ",
      "                          ",
      "         whats up?        ",
      "                          ",
    },

    buttons = {
      { "  Find File", "<leader> f f", "Telescope find_files" },
      { "  Recent Files", "<leader> f o", "Telescope oldfiles" },
      { "  Find Word", "<leader> f w", "Telescope live_grep" },
      { "  Bookmarks", "<leader> b m", "Telescope marks" },
      { "  Themes", "<leader> t h", "Telescope themes" },
      { "  Mappings", "<leader> c h", "NvCheatsheet" },
    },
  },
  cheatsheet = {theme = "simple"},

}

M.plugins = "custom.plugins"

-- custom global vim config
vim.g.mapleader = "\\"
vim.opt.relativenumber = true

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

-- nvdash (dashboard)
return M
