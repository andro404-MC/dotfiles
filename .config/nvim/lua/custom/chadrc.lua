---@type ChadrcConfig
local M = {}
M.ui = {
  theme = "tokyonight",
  lsp_semantic_tokens = true,

  cmp = { style = "atom" },

  statusline = {
    theme = "minimal",
    separator_style = "block",
  },

  tabufline = {
    lazyload = true,
    overriden_modules = function(modules)
      table.remove(modules, 4)
    end,
  },

  nvdash = {
    load_on_startup = true,
    header = {
      " ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓",
      " ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒",
      "▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░",
      "▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ ",
      "▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒",
      "░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░",
      "         ░    ░  ░    ░ ░        ░   ░         ░   ",
    },
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
