local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- webdev
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    markdown = { "prettier" },
    graphql = { 'prettier' },
    css = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    jsonc = { "prettier" },
    --backend dev
    c = {"clang_format"},
    cpp = {"clang_format"},
    sh = { "shfmt" },
    python = {"black"},
    go = {"golines", "goimports", "gofmt", "gofumpt", "gci" },
    rust = { "rustfmt" },
    ocaml = { "ocamlformat" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
