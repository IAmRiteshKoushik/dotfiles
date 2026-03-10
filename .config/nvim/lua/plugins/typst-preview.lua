return {
  "niuiic/typst-preview.nvim",
  ft = "typst",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("typst-preview").setup {
      debug = false,
      open_cmd = nil, -- Will use default browser
    }
  end,
}
