-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls","docker_compose_language_service","dockerls","clangd","cmake","eslint","gopls","graphql","helm_ls","jsonls","pyright","rust_analyzer","sqlls", "tailwindcss","terraform_lsp","tsserver","ocamllsp", "marksman"}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end


