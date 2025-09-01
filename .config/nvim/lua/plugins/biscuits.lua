return {
  "code-biscuits/nvim-biscuits",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  event = { "BufReadPost", "BufNewFile" }, -- or set to "VeryLazy" if you want
  config = function()
    require("nvim-biscuits").setup {
      show_on_start = true, -- or false, see notes below
      cursor_line_only = true,
      -- add more options here
    }
  end,
}
