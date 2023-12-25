local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "svelte", "gopls", "ccls", "cmake", "tsserver", "templ", "html", "tailwindcss", "pylsp" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig["tailwindcss"].setup {
  filetypes = {
    "templ",
    "svelte",
  },
  init_options = {
    userLanguages = {
      templ = "html",
    },
  },
}
