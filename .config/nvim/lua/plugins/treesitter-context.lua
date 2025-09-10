return {
  "nvim-treesitter/nvim-treesitter-context",
  event = "VeryLazy", -- or a suitable lazy-load event
  opts = {
    enable = true,
    line_numbers = true,
    -- customize further as needed
  },
  config = function(_, opts)
    require("treesitter-context").setup(opts)
  end,
}
