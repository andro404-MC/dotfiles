local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {},
    },
  },
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreview", "MarkdownPreviewStop" },
    lazy = false,
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    init = function()
      vim.g.mkdp_theme = "dark"
      vim.g.mkdp_browser = "/usr/local/bin/surf"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      view = {
        width = 23,
      },
      filters = {
        dotfiles = false,
      },
    },
  },
}
return plugins
