local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "biome" },
    typescript = { "biome" },
    go = { "goimports" },
  },

  formatters = {
    golines = {
      prepend_args = { "--max-len=80" },
    },
  },

  format_after_save = {
    async = true,
    timeout_ms = 2000,
    lsp_fallback = true,
  },
}

return options
