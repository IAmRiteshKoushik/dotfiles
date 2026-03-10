require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "lua_ls",
  "gopls",
  "jdtls",
  "clangd",
  "rust_analyzer",
  "zls",
  "ts_ls",
  "emmet_ls",
  "pyrefly",
  "prismals",
  "tinymist",
  "tailwindcss",
  "prettierd",
}

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
