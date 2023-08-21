---@type ChadrcConfig
local M = {}
M.ui = {
	theme = "tokyonight",
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
}
M.plugins = "custom.plugins"
return M
