require "nvchad.autocmds"

vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  command = "startinsert",
})
