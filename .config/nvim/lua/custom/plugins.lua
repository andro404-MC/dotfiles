local plugins = {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"gopls",
				"lua-language-server",
				"stylua",
			},
		},
	},

	{
		"neovim/nvim-lspconfig",

		dependencies = {
			"jose-elias-alvarez/null-ls.nvim",
			config = function()
				require("custom.configs.null-ls")
			end,
		},

		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
	},
}
return plugins
